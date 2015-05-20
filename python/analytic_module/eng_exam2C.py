import json

def operation(db,unique_code):
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
#"select sum(`user_record`.`total`) AS `total`,count(`user_record`.`user_code`) AS `filled_form` from `user_record` INNER JOIN `undergraduate` ON `user_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
			query = '';
			for column in column_name:
				#print column
				#print index[column]
				query = query+"`undergraduate`.`"+column+"` ='"+index[column]+"' AND "
			extract_query = "select sum(`user_record`.`total`) AS `total`,count(`user_record`.`user_code`) AS `filled_form` from `user_record` INNER JOIN `undergraduate` ON `user_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
			university_query ="select sum(`user_record`.`total`) AS `total`,count(`user_record`.`user_code`) AS `filled_form` from `user_record` INNER JOIN `undergraduate` ON `user_record`.`user_code` =`undergraduate`.`unique_code` AND "+"`undergraduate`.`"+column_name[1]+"` ='"+index[column_name[1]]+"' AND "+""
			for form_code in newlist:

				form_no ="30103010"+str(form_code)

#user marks in semesters
				#print ".................."
				sql2 ="SELECT `total` FROM `user_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_no)
				user_extract_data = db.RunQueryColNameOnAcadspace(sql2)
				if(user_extract_data):
					user_marks = float(user_extract_data[0]['total'])
#avg user marks who are from user college and in same stream

					sql2 = extract_query+"`user_record`.`form_code` = %s"%(form_no)
					overal_extract_data = db.RunQueryColNameOnAcadspace(sql2)
					#print overal_extract_data
					overall_total_marks =round((overal_extract_data[0]['total']/overal_extract_data[0]['filled_form']),2)
					#print overall_total_marks
#form name
					sql3 ="SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(form_no)
					form_name = db.RunQueryColNameOnAcademic(sql3)
					form_name = form_name[0]['form_title']


					sql4 = university_query+"`user_record`.`form_code` = %s"%(form_no)
					overal_university_data = db.RunQueryColNameOnAcadspace(sql4)
					#print overal_extract_data
					overall_university_marks =round((overal_university_data[0]['total']/overal_university_data[0]['filled_form']),2)

					graph_data.append({"sem_name":form_name,"overall_university_score":overall_university_marks,"overall_college_score":overall_total_marks,"user_marks":user_marks})

		series.append({"valueField":"overall_university_score","name":"Avg univeristy score"})
		series.append({"valueField":"overall_college_score","name":"Avg college score"})
		series.append({"valueField":"user_marks","name":"Your Score"})

	except:
		print "Error: unable to fecth data"


	related_data ={
			"Question":"How am i performing in my Electronic Engg semester exam?",
			"Answer_Type":"Comparision_graph",
			"Description": "This chart indicates user overall performance.",
            "type":"graph",
			"Related_Data":{
			    "set":"#2C",
			    "title":"Electronic Engineering",
			    "argumentField":"sem_name",
			    "graph_type":"line",
			    "data":graph_data,
			    "tooltip":"true",
			    "x-axis-name":"Semester Name",
			    "min-x":0,
			    "max-x":8,
			    "y-axis-name":"CGPA",
			    "min-y":0,
			    "max-y":9.99,
			    "series":series
			}
		}
	#print related_data
	print "2C data available"
	return related_data



def dependancies():
    dependent_forms = []
    dependent_forms.append("3010301*")
    return dependent_forms


def execute(db,user_code):
    #print "Engineering Rule 1 Running "+user_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code)
    result = {'2C':data}
    return [stat,result]