import json

def operation(db,unique_code,match_code):
	#print "test >>>"+match_code
	newlist =[1,2,3,4,5,6,7,8]
	newlist.sort()
	graph_data =[]
	series =[]
	related_data =''
	new =''
	total =0
	avg =0
#get current user college name and university name
	sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
	try:
		results = db.RunQueryColNameOnAcadspace(sql)
		sql2 = "SELECT `form_code`,YEAR(STR_TO_DATE(`data_field_1`,'%s')) AS `year`,`total` from `undergraduate_record` where `user_code` ='%s' AND `form_code` LIKE '%s'"%("%Y-%m-%d",unique_code,match_code+'%')
		results2 = db.RunQueryColNameOnAcadspace(sql2)
		if results2:
			for each in results2:
				user_total = each['total']
				form_code = each['form_code']
				year = each['year']-1
				sql3 = "SELECT (sum(`total`)/count(`user_code`)) AS `avg` from `undergraduate_record` INNER JOIN `undergraduate`ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND `undergraduate_record`.`form_code` = '%s' AND `institute name`='%s' AND YEAR(STR_TO_DATE(`undergraduate_record`.`data_field_1`,'%s')) = '%s'"%(form_code,results[0]['institute name'],"%Y-%m-%d",year)
				results3 = db.RunQueryColNameOnAcadspace(sql3)

				if results3[0]['avg'] is None:
					avg = 0
				else:
					avg = results3[0]['avg']

				sql4 = "SELECT `form_title` FROM `form_field` WHERE `form_id` = '%s'"%(form_code)
				results4 = db.RunQueryColNameOnAcadspace(sql4)
				graph_data.append({"x-axis":results4[0]['form_title'],"y-axis1":float(user_total),"y-axis2":float(avg)})
			
			print graph_data
			series.append({"valueField":"y-axis1","name":"Your score"})
			series.append({"valueField":"y-axis2","name":"Previous Batch avg"})
			#print graph_data
			print min([min(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))])
			print max([max(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))])

			related_data ={
					 "Question":"Comparision with old batch?",
					 "Answer_Type":"Comparision_graph",
					 "Description": "This chart indicates user overall performance.",
					"type":"graph",
					 "Related_Data":{
						 "set":"#3A",
						 "title":" ",
						 "argumentField":"x-axis",
						 "graph_type":"line",
						 "data":graph_data,
						 "tooltip":"true",
						 "x-axis-name":"Semester Name",
						 "min-x":0,
						 "max-x":8,
						 "y-axis-name":"CGPA",
						 "min-y":min([min(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))]),
						 "max-y":max([max(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))]),
						 "series":series
						 }
					  }
			return related_data

			
	except:
		raise



def dependancies():
	dependent_forms = ["3010101*","3010201*","3010301*","3010401*"]
	return dependent_forms


def execute(db,user_code,code):
	#print "Engineering Rule 1 Running "+user_code
	form_code = code.replace("*","")
	print "form_no"+form_code
	stat = "Partial"
	stat = "Failed"
	stat = "Success"
	data = operation(db,user_code,form_code)
	result = {'3A':data}
	return [stat,result]