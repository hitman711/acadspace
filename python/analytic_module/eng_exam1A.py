#-------------------------------SEMESTER PERFORMANCE-------------------
import json

def operation(db,unique_code,form_code):
    #print "inside"+form_code
    graph_data =[]
    total =0
    sql = "SELECT `form_code`,`total` FROM `undergraduate_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_code+'%')
    try:
        # Execute the SQL command
        results = db.RunQueryColNameOnAcadspace(sql)
        #print results
        for row in results:
            form_name = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(row['form_code'])
            result2 = db.RunQueryColNameOnAcademic(form_name)
            for form_title in result2:
                exam_name = form_title['form_title']
            marks = row['total']
            #print marks
	    total += float(marks)
            graph_data.append({"x-axis":exam_name,"y-axis":float(marks)})
            graph_data.sort()
	total = round(total / len(results),2)
        #print graph_data
        #print min([graph_data[i]['y-axis'] for i in range(0, len(graph_data))])
        #print max([graph_data[i]['y-axis'] for i in range(0, len(graph_data))])
    except:
        print "Error: unable to fecth data"

    related_data ={
        "Question":"How I am performing in My Semester Examinations?",
        "Answer_Type":"normal_graph",
        "type":"graph",
        "Description": "This Graph shows your semester performance. Upto current semester your CGPA will be <b>"+str(total)+"</b>." ,
        "Related_Data":{
            "set":"#1A",
            "title":"Semester Performance Graph",
            "argumentField":"x-axis",
            "valueField":"y-axis",
            "graph_type":"line",
            "series_name":"Semester",
            "data":graph_data,
            "tooltip":"true",
            "x-axis-name":"Semester Name",
            "min-x":0,
            "max-x":8,
            "y-axis-name":"CGPA",
            "min-y":min([graph_data[i]['y-axis'] for i in range(0, len(graph_data))])-0.5,
            "max-y":max([graph_data[i]['y-axis'] for i in range(0, len(graph_data))])+0.5,
            "avg":total
        }
    }
    return related_data

def dependancies():
    dependent_forms = ["3010101*","3010201*","3010301*","3010401*"]
    return dependent_forms


def execute(db,user_code,code):
    form_code = code.replace("*","")
    #print "form_code"+form_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code, form_code)
    result = {'1A':data}
    return [stat,result]