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
#get current user college name and university name
	sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
	results = db.RunQueryColNameOnAcadspace(sql)
	if results:
		try:
			del[results[0]['id']]
			del[results[0]['unique_code']]
			for index in results:
#get other students who are in the same college
				column_name =index.keys()
				column_value = index.values()
#"select sum(`undergraduate_record`.`total`) AS `total`,count(`undergraduate_record`.`user_code`) AS `filled_form` from `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
				query = '';
				for column in column_name:
#print column
#print index[column]
					query = query+"`undergraduate`.`"+column+"` ='"+index[column]+"' AND "
					extract_query = "select sum(`undergraduate_record`.`total`) AS `total`,count(`undergraduate_record`.`user_code`) AS `filled_form` from `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
					university_query ="select sum(`undergraduate_record`.`total`) AS `total`,count(`undergraduate_record`.`user_code`) AS `filled_form` from `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND "+"`undergraduate`.`"+column_name[1]+"` ='"+index[column_name[1]]+"' AND "+""
			
				for form_code in newlist:
				    form_no =match_code+"0"+str(form_code)
				    sql2 ="SELECT `total` FROM `undergraduate_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_no)
				    #print sql2
				    user_extract_data = db.RunQueryColNameOnAcadspace(sql2)
			
				    if(user_extract_data):
					user_marks = float(user_extract_data[0]['total'])
					
					sql3 = extract_query+"`undergraduate_record`.`form_code` = %s"%(form_no)
					overal_extract_data = db.RunQueryColNameOnAcadspace(sql3)
					overall_total_marks =round((overal_extract_data[0]['total']/overal_extract_data[0]['filled_form']),2)

					sql4 ="SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(form_no)
					form_name = db.RunQueryColNameOnAcademic(sql4)
					form_name = form_name[0]['form_title']

					sql5 = university_query+"`undergraduate_record`.`form_code` = '%s'"%(form_no)
					overal_university_data = db.RunQueryColNameOnAcadspace(sql5)
					overall_university_marks =round((overal_university_data[0]['total']/overal_university_data[0]['filled_form']),2)
				
					graph_data.append({"sem_name":form_name,"overall_university_score":overall_university_marks,"overall_college_score":overall_total_marks,"user_marks":user_marks})
					#print graph_data
        			#print max([graph_data[i]['y-axis'] for i in range(0, len(graph_data))])
					'''
					print form_no
					print user_marks
					print form_name
					print overall_university_marks
					print overall_total_marks
					print "..........................................."
					'''
				#print min([min(graph_data[i]['overall_university_score'],graph_data[i]['overall_college_score'],graph_data[i]['user_marks']) for i in range(0, len(graph_data))])
				series.append({"valueField":"overall_university_score","name":"Avg univeristy score"})
				series.append({"valueField":"overall_college_score","name":"Avg college score"})
				series.append({"valueField":"user_marks","name":"Your Score"})
		
				related_data ={
					 "Question":"How I am performing compared to College and university average performance?",
					 "Answer_Type":"Comparision_graph",
					 "Description": "This chart indicates user overall performance.",
					"type":"graph",
					 "Related_Data":{
						 "set":"#2A",
						 "title":" ",
						 "argumentField":"sem_name",
						 "graph_type":"line",
						 "data":graph_data,
						 "tooltip":"true",
						 "x-axis-name":"Semester Name",
						 "min-x":0,
						 "max-x":8,
						 "y-axis-name":"CGPA",
						 "min-y":min([min(graph_data[i]['overall_university_score'],graph_data[i]['overall_college_score'],graph_data[i]['user_marks']) for i in range(0, len(graph_data))])-0.5,
						 "max-y":max([max(graph_data[i]['overall_university_score'],graph_data[i]['overall_college_score'],graph_data[i]['user_marks']) for i in range(0, len(graph_data))])+0.5,
						 "series":series
						 }
					  }
				return related_data
		except:
		    print "Error: unable to fecth data"
		    return "null"




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
	result = {'2A':data}
	return [stat,result]