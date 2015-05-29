import json

def operation(db,unique_code,form_code):
    #print "inside"+form_code
    graph_data =[]
    total =0
    sql = "SELECT `table_name`,`exam_name` FROM `comp_exam_mapping` WHERE `form_code` LIKE '%s'"%(form_code+"%")
    try:
        results = db.RunQueryColNameOnAcadspace(sql)
        table_name = results[0]['table_name']
        sql2 = "SELECT `data_field_1`,`total`,`attempt` FROM `%s` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(table_name,unique_code,form_code+'%')
        results2 = db.RunQueryColNameOnAcadspace(sql2)
        for user_data in results2:
            #print type(int(user_data['total']))
            #print type(user_data['attempt'])
            graph_data.append({"x-axis":user_data['data_field_1'],"y-axis":int(user_data['total'])})
            total = total +int(user_data['total'])

        graph_data.sort()
        total = round(total / len(results2),2)
    except:
        print "no data available"

    related_data ={
        "Question":"How I am performing in "+results[0]['exam_name']+" ?",
        "Answer_Type":"normal_graph",
        "type":"graph",
        "Description": "This graphs shows Semester wise performance of the student Compared with Average CPGA of its own performance in all exams" ,
        "Related_Data":{
            "set":"#5B",
            "title":"Performance Graph",
            "argumentField":"x-axis",
            "valueField":"y-axis",
            "graph_type":"line",
            "series_name":"GRE Attempt",
            "data":graph_data,
            "tooltip":"true",
            "x-axis-name":results[0]['exam_name']+" attempts",
            "min-x":0,
            "max-x":10,
            "y-axis-name":"GRE Marks",
            "min-y":0,
            "max-y":339,
            "avg":total
        }
    }
    return related_data




def dependancies():
    dependent_forms = ['501010101*','501010102*','501010103*']
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