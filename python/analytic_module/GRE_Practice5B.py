#---------------------------------GRE PRACTICE EXAM PERFORMANCE---------
import json

def operation(db,unique_code,form_code):
    #print "inside"+form_code
    graph_data =[]
    total =0
    totalCalc =0
#.........SQL QUERY FOR USER RECORD ......................
    sql = "SELECT `table_name`,`exam_name`,`form_code` FROM `comp_exam_mapping` WHERE `form_code` LIKE '%s'"%(form_code+"%")
    try:
        results = db.RunQueryColNameOnAcadspace(sql)
#.........LIST OF USER RECORD........................        
        for index in range(0,len(results)):
            table_name = results[index]['table_name']
            form_code = results[index]['form_code']
            sql2 = "SELECT `data_field_1`,`total`,`attempt` FROM `%s` WHERE `user_code`='%s' AND `form_code`='%s'"%(table_name,unique_code,form_code)
            results2 = db.RunQueryColNameOnAcadspace(sql2)

            for user_data in results2:
                totalCalc =totalCalc+1
                graph_data.append({"x-axis":user_data['data_field_1'],"total":int(user_data['total'])})
                total = total +int(user_data['total'])
#.....................SORT DATA BY NUMBER......................
        graph_data.sort()
#.....................AVG NUMBER...............................
        print totalCalc
        total = round(total / totalCalc,2)

#releted DATA        
        related_data ={
        "Question":"How I am performing in GRE practice Exams?",
        "Answer_Type":"normal_graph",
        "type":"graph",
        "Description": "This graphs show users GRE Performance in practice exam attempts. According to available data your practice attempts average score is <b>"+str(total)+"</b>." ,
        "Related_Data":{
            "set":"#5B",
            "title":"Performance Graph",
            "argumentField":"x-axis",
            "valueField":"y-axis",
            "graph_type":"line",
            "series_name":"GRE Attempt",
            "data":graph_data,
            "tooltip":"true",
            "x-axis-name":"GRE attempts",
            "min-x":0,
            "max-x":10,
            "y-axis-name":"GRE Marks",
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
    dependent_forms = ['5010102*']
    return dependent_forms


def execute(db,user_code,code):
    form_code = code.replace("*","")
    #print "form_code"+form_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code, form_code)
    result = {'5B':data}
    return [stat,result]