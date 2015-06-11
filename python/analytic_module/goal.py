#-------------------------------SEMESTER PERFORMANCE-------------------
import json

def operation(db,unique_code,match_code):
    #print "inside"+form_code
    graph_data =[]
    total =0
    sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
    try:
        # Execute the SQL command
        results = db.RunQueryColNameOnAcadspace(sql)
        institute_name = results[0]['institute name']
        university_name = results[0]['university name']
        goal = float(results[0]['goal'])

        sql2 = "SELECT MIN(`form_code`) AS 'first form', MAX(`form_code`) AS 'last form',sum(`total`) AS 'AVG' FROM `undergraduate_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,match_code+'%')
        results2 = db.RunQueryColNameOnAcadspace(sql2)
        total_forms = int(match_code+"08") - int(results2[0]['first form'])
        goal = goal*total_forms
        remaing_forms = int(match_code+"08") - int(results2[0]['last form'])
        remaing_goal = float(goal)-float(results2[0]['AVG'])
        if remaing_forms is not 0:
            print total_forms
            print goal
            print remaing_forms
            print remaing_goal
        else:


    except:
        print "Error: unable to fecth data"

def dependancies():
    dependent_forms = ["3010101000"]
    return dependent_forms


def execute(db,user_code,code):
    form_code = code.replace("*","")
    #print "form_code"+form_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code, form_code)
    result = {'9A':data}
    return [stat,result]