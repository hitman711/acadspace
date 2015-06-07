#--------------------------------------------------USER PERFORMANCE WITH FINAL YEAR BATCH--------------------
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
			current_year = max(results2[i]['year'] for i in  range(0, len(results2)))
			sql3 = "SELECT `unique_code` from `undergraduate_record` INNER JOIN `undergraduate`ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND `undergraduate_record`.`form_code` = '%s' AND `institute name`='%s' AND YEAR(STR_TO_DATE(`undergraduate_record`.`data_field_1`,'%s')) = '%s'"%(int(match_code+"08"),results[0]['institute name'],"%Y-%m-%d",current_year)
			results3 = db.RunQueryColNameOnAcadspace(sql3)

			for each in range(0, len(results2)):
				user_total = results2[each]['total']
				form_code = results2[each]['form_code']
				year = results2[each]['year']
				for lastYearuser in results3:
					sql4 ="SELECT `total` FROM `undergraduate_record` where `user_code` ='%s' AND `form_code`='%s' "%(lastYearuser['unique_code'], form_code)
					results4 = db.RunQueryColNameOnAcadspace(sql4)
					total = total + float(results4[0]['total'])
				avg = round((total/len(results3)),2)
				#print avg

				sql5 = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(form_code)
				results5 = db.RunQueryColNameOnAcadspace(sql5)
				#print results5[0]['form_title']
				graph_data.append({"x-axis":results5[0]['form_title'],"y-axis1":float(user_total),"y-axis2":float(avg)})
				avg =0
				total =0

			series.append({"valueField":"y-axis1","name":"my score"})
			series.append({"valueField":"y-axis2","name":"current final year batch score"})
			related_data ={
					 "Question":"My score comparison with current final year batch performance?",
					 "Answer_Type":"Comparision_graph",
					 "Description": "This chart indicates user overall performance.",
					"type":"graph",
					 "Related_Data":{
						 "set":"#6A",
						 "title":" ",
						 "argumentField":"x-axis",
						 "graph_type":"line",
						 "data":graph_data,
						 "tooltip":"true",
						 "x-axis-name":"Semester Name",
						 "min-x":0,
						 "max-x":8,
						 "y-axis-name":"CGPA",
						 "min-y":min([min(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))])-0.5,
						 "max-y":max([max(graph_data[i]['y-axis1'],graph_data[i]['y-axis2']) for i in range(0, len(graph_data))])+0.5,
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
	result = {'6A':data}
	return [stat,result]