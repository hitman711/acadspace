import json

def operation(db,unique_code):
    graph_data =[]
    total =0
    sql = "SELECT `form_code`,`total` FROM `user_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,'3010101%')
    try:
        # Execute the SQL command
        results = db.RunQueryColNameOnAcadspace(sql)
        for row in results:
            form_name = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(row['form_code'])
            result2 = db.RunQueryColNameOnAcademic(form_name)
            for form_title in result2:
                exam_name = form_title['form_title']
            marks = row['total']
	    total += float(marks)
            graph_data.append({"x-axis":exam_name,"y-axis":float(marks)})
            graph_data.sort()
	total = round(total / len(results),2)
        #print graph_data
    except:
        print "Error: unable to fecth data"

    related_data ={
        "Question":"How am i performing in my semester exam?",
        "Answer_Type":"normal_graph",
        "type":"graph",
        "Description": "This chart indicates user overall performance.",
        "Related_Data":{
            "set":"#1A",
            "title":"Performance Graph",
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
            "min-y":0,
            "max-y":9.99,
            "avg":total
        }
    }
    return related_data

def dependancies():
    dependent_forms = []
    dependent_forms.append("3010101*")
    return dependent_forms


def execute(db,user_code):
    #print "Engineering Rule 1 Running "+user_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code)
    result = {'1A':data}
    return [stat,result]