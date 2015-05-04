import json
def operation(db,unique_code):
	graph_data =[]
	#form_code = ['50102%']
	sql = "SELECT `attempt`,`total` FROM `comp_gre` WHERE `user_code`='%s' AND `form_code` LIKE '%s'" %(unique_code,'50101%')
	try:
		results = db.RunQueryOnAcadspace(sql)
		if results:
			for information in results:
				graph_data.append(information)
		db.close()
	except:
		print "Error: unable to fecth data"
	graph_data.sort()	
	related_data = {
	"Question": "How am i performing in my GRE Normal exam?",
	"Answer_Type": "line_chart",
	"Description": "Description of chart",
	"Related_Data": [
		"#2A",
		[
                           {
			"data": graph_data,
			"color": "#3c8dbc"
                           }
		],
		{
		"grid": {
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
			"ticks": [[1,"1"],[2,"2"],[3,"3"],[4,"4"],[5,"5"],[6,"6"],[7,"7"],[8,"8"]]
			}
		}
		]
	}
	return related_data 
	
def dependancies():
	dependent_forms = []
	dependent_forms.append("50102*")
	return dependent_forms

def execute(db,user_code):
    print "Engineering Rule 1 Running"+user_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code)
    result = {'2A':data}
    return [stat,result]


