import database as db
import MySQLdb
import json
import sys, os
import glob
import re

# - - - - - - - Importing Modules - - - - - - - - - ------------------ 
# Following part of the code imports all modules from 
# folder ""analytic_module" also calculates dependencies script
# It creates one Dictionary 
# Dep_Dict = Key as Module name
# and Values as "Dependencies for list"
# - - - - - - - - - - - - - - - - - - - - - - - - - -
modules = glob.glob("analytic_module/*.py")
allmodules = [ os.path.basename(f)[:-3] for f in modules]
Dep_Dict = {}
for mod in allmodules:
    exec("from analytic_module import %s"%(mod))
    exec("tempmod = %s"%mod)
    if hasattr(tempmod, 'dependancies'):
        result = tempmod.dependancies()
        Dep_Dict.update({mod: result})
    else:
        print "No Dependencies Mentioned in module %s . . . . .Skipping"%(mod)

print "- - - - - - - - - - - Display Loaded Modules and Form Dependencies - - - - - - - - - - - - - -"
for key, data in Dep_Dict.items():
    print "%s Dependency -> %s"%(key,data)

print "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Searches for updated records 
data =  db.RunQueryColName("SELECT * FROM `user_analytic_stat` WHERE `record_update_stat` <> 0")

for i in range(0,len(data)):            # Iterating over resulted records (users) 
    
    # Reading each record and converting to string and object
    record_update_info = str(data[i]['record_update_info'])            # Updated for list
    try:
        record_update_info = json.loads(record_update_info)        #  Completed_Analytics data as Object
    except:
        record_update_info = json.loads('{"Total_Edited_Form":"0","Edited_Form_List":[]}')
    
    
    user_id = str(data[i]['user_id'])                                # Unique User Id of currently Selected record

    Completed_Analytics = str(data[i]['Completed_Analytics'])
    try:
        Completed_Analytics = json.loads(str(Completed_Analytics))        #  Completed_Analytics data as Object
    except:
        Completed_Analytics = json.loads('{"Total_Suceeded_Analytics":"0","Suceeded_Analytic":{}}')

        
    Partial_Analytics = str(data[i]['Partial_Analytics'])
    try:
        Partial_Analytics = json.loads(str(Partial_Analytics))            #  Partial_Analytics data as Object
    except:
        Partial_Analytics = json.loads('{"Total_Partial_Suceeded_Analytics":"0""Partial_Suceeded_Analytic":[],}')
    

    Data_Update_Flag = False            # updates whenever user data gets edited
    
    
    print "- - - - - - Form updated for user %s - - - - - - - - - -"%user_id
    
    for edited_form in record_update_info["Edited_Form_List"]:        # Select each edited for one by one
        print "Edited Form >> %s"%(edited_form)
        for dict_key, dict_data in Dep_Dict.items():        # Iterate to find out affected analysis  
            match_flag = False                                     
            matching_regex ="(%s\w+)"%dict_data[0].replace("*",'')        # Convert to regex for comparison
            #- - - - - - Comparing edited form with analysis 
            match_flag = True if re.match(str(matching_regex), str(edited_form)) else match_flag
            
            #- - - If Analysis is affected - - - - - - -
            if match_flag == True:
                exec("tempmod = %s"%dict_key)                   # Load that module
                # Execute that Module returns 
                # "Success","Failure","Partial" Status
                [Stat,result] = tempmod.execute(db,user_id)         
                if Stat == "Success":                                # If Success add data to Suceeded_Analytic
                    if result.keys()[0] in Completed_Analytics['Suceeded_Analytic']:
                        print "Updating Record . . . . . . "
                    Completed_Analytics['Suceeded_Analytic'].update(result)
                    if result.keys()[0] in Partial_Analytics['Partial_Analytics']:
                        Partial_Analytics['Partial_Analytics'].pop(result.keys()[0])
                    Data_Update_Flag = True
                elif Stat == "Partial":                                # If Partial add data to Partial_Analytics
                    if result.keys()[0] in Partial_Analytics['Partial_Analytics']:
                        print "Updating Partial Record. . . . . ."
                    Partial_Analytics['Partial_Analytics'].update(result)
                    if result.keys()[0] in Completed_Analytics['Completed_Analytics']:
                        Completed_Analytics['Completed_Analytics'].pop(result.keys()[0])
                    Data_Update_Flag = True
                else:                                                # Failed
                    if result.keys()[0] in Completed_Analytics['Completed_Analytics']:
                        Completed_Analytics['Completed_Analytics'].pop(result.keys()[0])
                    if result.keys()[0] in Partial_Analytics['Partial_Analytics']:
                        Partial_Analytics['Partial_Analytics'].pop(result.keys()[0])
                    Data_Update_Flag = True
                    print "Failed Analysis Calculation. . . . . . Deleting"

    # If record updated store it back to database
    if Data_Update_Flag == True:
        record_update_info = str(MySQLdb.escape_string('{"Total_Edited_Form":"0","Edited_Form_List":[]}'))
        Completed_Analytics = str(MySQLdb.escape_string(json.dumps(Completed_Analytics)))
        Partial_Analytics = str(MySQLdb.escape_string(json.dumps(Partial_Analytics)))
        user_id = str(MySQLdb.escape_string(user_id))
        
        Query = "UPDATE `user_analytic_stat` SET `record_update_stat`='0',`record_update_info`='%s', `Completed_Analytics`='%s',`Partial_Analytics`='%s' WHERE `user_id` = '%s'"%(record_update_info,Completed_Analytics,Partial_Analytics,user_id)
        db.RunQuery(Query)

