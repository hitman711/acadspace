#-------------------------------------------Pie Chart for count user performance in your institute-----------------------
import json

def operation(db,unique_code,form_code):
    graph_data =[]
    total =0
    rangeList = {0,1,2,3,4,5,6,7,8,9}
    sql = "SELECT ROUND((SUM(`total`) / COUNT(`total`)),2) AS `AVG` FROM `undergraduate_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_code+'%')
    try:
        results = db.RunQueryColNameOnAcadspace(sql)
        userAvg = results[0]['AVG']
        #print userAvg
        sql2 = "SELECT * FROM `undergraduate` WHERE `unique_code` = '%s'"%(unique_code)
        results2 = db.RunQueryColNameOnAcadspace(sql2)
        if results2[0]['institute name']:
            #print results2[0]['institute name']
            #print form_code+'%'
            sql3 ="SELECT ROUND((SUM(`total`) / COUNT(`total`)),2) AS `AVG` FROM `undergraduate_record` INNER JOIN `undergraduate`ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND `institute name`= '%s' AND `form_code` LIKE '%s' GROUP BY `undergraduate_record`.`user_code`"%(results2[0]['institute name'], form_code+'%')
            results3 = db.RunQueryColNameOnAcadspace(sql3)
            for each in rangeList:
                jsonFormat = {"range":"","total":0}
                jsonFormat['range'] = str(each)+" - "+str(each+1)
                for  i in xrange(0,len(results3)):
                    if results3[i]['AVG'] < each+1 and results3[i]['AVG'] > each:
                        jsonFormat['total'] = jsonFormat['total']+1
                graph_data.append(jsonFormat)
        graph_data.sort()
        #print graph_data

        related_data ={
        "Question":"My institute student performance range",
        "Answer_Type":"pie_graph",
        "type":"graph",
        "Description": "This pie-chart shows average CPGA of students in my institute" ,
        "Related_Data":{
            "set":"#7A",
            "title":"Overall institute performance Graph",
            "argumentField":"range",
            "valueField":"total",
            "graph_type":"pie",
            "series_name":"Semester",
            "data":graph_data,
            "tooltip":"true",
            "x-axis-name":"Semester Name",
            "min-x":0,
            "max-x":8,
            "y-axis-name":"CGPA",
            "min-y":min([graph_data[i]['total'] for i in range(0, len(graph_data))])-0.5,
            "max-y":max([graph_data[i]['total'] for i in range(0, len(graph_data))])+0.5
            }
        }
        return related_data

    except:
        print "Error: unable to fecth data = "+str(form_code)


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
    result = {'7A':data}
    return [stat,result]