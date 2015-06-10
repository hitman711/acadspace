#----------------------------TOEFL FINAL EXAM REPORT------------
import json

def operation(db,unique_code,form_code):
    print "inside"+form_code
    graph_data =[]
    total =0
    totalCalc =0
#.........SQL QUERY FOR USER RECORD ......................
    sql = "SELECT `table_name`,`exam_name`,`form_code` FROM `comp_exam_mapping` WHERE `form_code` ='%s'"%(form_code)
    try:
        results = db.RunQueryColNameOnAcadspace(sql)
        #print results
#.........LIST OF USER RECORD........................
        table_name = results[0]['table_name']
        form_code = results[0]['form_code']
        sql2 = "SELECT `data_field_1`,`total`,`attempt` FROM `%s` WHERE `user_code`='%s' AND `form_code`='%s' ORDER BY STR_TO_DATE(`data_field_1`,'%s') ASC"%(table_name,unique_code,form_code,"%Y-%m-%d")
        results2 = db.RunQueryColNameOnAcadspace(sql2)

        for user_data in results2:
            totalCalc =totalCalc+1
            graph_data.append({"x-axis":user_data['data_field_1'],"total":int(user_data['total'])})
            total = total +int(user_data['total'])
        
#.....................SORT DATA BY NUMBER......................
        #graph_data.sort()
        #print graph_data
#.....................AVG NUMBER...............................
        total = round(total / totalCalc,2)
        #print total
#releted DATA        
        related_data ={
            "Question":"How I am performing in TOEFL Final Exam attempts?",
            "Answer_Type":"normal_graph",
            "type":"graph",
            "Description": "This graphs show users TOEFL Performance in final exam attempts. According to available data your final attempts average score is <b>"+str(total)+"</b>.",
            "Related_Data":{
                "set":"#8A",
                "title":"TOEFL performance Graph",
                "argumentField":"x-axis",
                "valueField":"total",
                "graph_type":"line",
                "series_name":"TOEFL Attempt",
                "data":graph_data,
                "tooltip":"true",
                "x-axis-name":"TOEFL attempts",
                "min-x":0,
                "max-x":10,
                "y-axis-name":"TOEFL Marks",
                "min-y":min([graph_data[i]['total'] for i in range(0, len(graph_data))])-5,
                "max-y":max([graph_data[i]['total'] for i in range(0, len(graph_data))])+5,
                "avg":total
                }
            }
        return related_data

    except:
        print "no data available"
        return "null"


def dependancies():
    dependent_forms = ['50102000']
    return dependent_forms

def execute(db,user_code,code):
    #form_code = code.replace("*","")
    #print "form_code"+form_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code, code)
    result = {'8A':data}
    return [stat,result]