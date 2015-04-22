import database as db
import MySQLdb
import json
import sys, os
import glob
import re

# - - - - - - - Importing Modules - - - - - - - - - - 
# Following part of the code imports all modules from 
# folder ""analytic_module" as modx where x start from 0 
# till number of modules available
# It Creates two dictionaries 
# Module_Dict = Abstract module name 
# Dep_Dict 
# - - - - - - - - - - - - - - - - - - - - - - - - - -
modules = glob.glob("analytic_module/*.py")
allmodules = [ os.path.basename(f)[:-3] for f in modules]
i = 0
Module_Dict = {}
Dep_Dict = {}
for mod in allmodules:
    modname = "mod%d"%i
    exec("from analytic_module import %s as %s"%(mod,modname))
    exec("tempmod = %s"%modname)
    if hasattr(tempmod, 'dependancies'):
        result = tempmod.dependancies()
        Module_Dict.update({modname: mod})
        Dep_Dict.update({modname: result})
        i = i+1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for key, data in Module_Dict.items():
    print "Addded Modules %s as %s"%(data,key)

print "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
for key, data in Dep_Dict.items():
    print "%s Dependency -> %s"%(key,data)

print "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

data =  db.RunQueryColName("SELECT * FROM `user_analytic_stat` WHERE `record_update_stat` <> 0")


for i in range(0,len(data)):
    record_update_info = str(data[i]['record_update_info'])
    user_id = str(data[i]['user_id'])

    Completed_Analytics = str(data[i]['Completed_Analytics'])
    Completed_Analytics = json.loads(str(Completed_Analytics))

    Partial_Analytics = str(data[i]['Partial_Analytics'])
    Partial_Analytics = json.loads(str(Partial_Analytics))

    Data_Update_Flag = False
    obj = json.loads(record_update_info)
    for edited_form in obj["Edited_Form_List"]:
        print "Edited Form by User %s >  %s"%(i,edited_form)
        for dict_key, dict_data in Dep_Dict.items():
            match_flag = False
            dict_data = dict_data[0].replace("*",'')
            matching_regex ="(%s\w+)"%dict_data
            # print "re.match(%s, %s)"%(matching_regex, edited_form)
            match_flag = True if re.match(str(matching_regex), str(edited_form)) else match_flag
            if match_flag == True:
                exec("tempmod = %s"%dict_key)
                [Stat,result] = tempmod.execute(db,user_id)
                if Stat == "Success":
                    if result.keys()[0] in Completed_Analytics['Suceeded_Analytic']:
                        print "Updating Record"
                    Completed_Analytics['Suceeded_Analytic'].update(result)
                    Data_Update_Flag = True
                elif Stat == "Partial":
                    if result.keys()[0] in Completed_Analytics['Partial_Analytics']:
                        print "Updating Partial Record"
                    Completed_Analytics['Partial_Analytics'].update(result)
                    Data_Update_Flag = True
                else:
                    print "Failed Analysis Calculation"

    if Data_Update_Flag == True:
        record_update_info = str(MySQLdb.escape_string('{"Total_Edited_Form":"0","Edited_Form_List":[]}'))
        Completed_Analytics = str(MySQLdb.escape_string(json.dumps(Completed_Analytics)))
        Partial_Analytics = str(MySQLdb.escape_string(json.dumps(Partial_Analytics)))
        user_id = str(MySQLdb.escape_string(user_id))
        
        Query = "UPDATE `user_analytic_stat` SET `record_update_stat`='0',`record_update_info`='%s', `Completed_Analytics`='%s',`Partial_Analytics`='%s' WHERE `user_id` = '%s'"%(record_update_info,Completed_Analytics,Partial_Analytics,user_id)
        db.RunQuery(Query)

