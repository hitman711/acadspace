import json

def operation(db,unique_code):
    graph_data =[]
    total =0
    sql = "SELECT `form_code`,`total` FROM `user_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,'301010%')
    try:
        # Execute the SQL command
        results = db.RunQueryColNameOnAcadspace(sql)
        for row in results:
            form_name = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(row['form_code'])
            result2 = db.RunQueryColNameOnAcademic(form_name)
            for form_title in result2:
                exam_name = form_title['form_title'].split(' ',1)
            marks = row['total']
	    total += float(marks)
            graph_data.append([float(exam_name[1]),float(marks)])
            graph_data.sort()
	total = round(total / len(results),2)
    except:
        print "Error: unable to fecth data"

    related_data = {
		"Question": "How am i performing in my semester exam?",
		"Answer_Type": "line_chart",
		"Description": "Description of chart",
		"Related_Data": [
			"#1A",
			[
                            {
				"data": graph_data,
				"color": "#3c8dbc"
                            }
			],
			{
			"grid": {
				"markings": [ { "yaxis": { "from":  total, "to": total }, "color": "#000" }],
				"hoverable": "true",
				"borderColor": "#f3f3f3",
				"borderWidth": 1,
				"tickColor": "#f3f3f3"
			},
			"series": {
				"shadowSize": 0,
				"lines": {
				"show": "true"
				},
				"points": {
				"show": "true"
				}
			},
			"lines": {
				"fill": "false",
				"color": [
				"#3c8dbc",
				"#f56954"
				]
			},
			"yaxis": {
				"show": "true"
			},
			"xaxis": {
				"ticks": [[1,"Sem 1"],[2,"Sem 2"],[3,"Sem 3"],[4,"Sem 4"],[5,"Sem 5"],[6,"Sem 6"],[7,"Sem 7"],[8,"Sem 8"]]
			}
			}
		]
		}
    return related_data




def dependancies():
    dependent_forms = []
    dependent_forms.append("30101*")
    return dependent_forms


def execute(db,user_code):
    #print "Engineering Rule 1 Running "+user_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code)
    result = {'1A':data}
    return [stat,result]