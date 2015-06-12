#-------------------------------------------------------------------------------
# Name:        PREVIOUS YEAR BATCH PERFORMANCE, USER PERFORMANCE
# Purpose:
#
# Author:      siddhesh
#
# Created:     12/06/2015
# Copyright:   (c) siddhesh 2015
# Licence:     <your licence>
#-------------------------------------------------------------------------------
#sql:- sql querys
#result :- data of executed query

import json		#json lib

#db : database name
#unique_code :user unique id
#match_code	:form code used for processing get from dependancies function

def operation(db,unique_code,match_code):
#engineering form numbers
	newlist =[1,2,3,4,5,6,7,8]
#sort list
	newlist.sort()
#graph data collects information to display on front end 
	graph_data =[]
#series only included if there is more than one data to represent like comparison graph
	series =[]
#related data collect frontend graph display information with series and graph_data
	related_data =''
#processing veriables
	new =''
	total =0
	avg =0
#get current user college name and university name
	sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
#	above query get following data from undergraduate table
#	id / unique code / institute name / university name
	try:
		results = db.RunQueryColNameOnAcadspace(sql)
		#print results
		sql2 = "SELECT `form_code`,YEAR(STR_TO_DATE(`data_field_1`,'%s')) AS `year`,`total` from `undergraduate_record` where `user_code` ='%s' AND `form_code` LIKE '%s'"%("%Y-%m-%d",unique_code,match_code+'%')
#	above query get following data from  undergraduate record
#	form_code :- user filed form
#	year:- year when from filed
#	total:- total marks get in form field
		results2 = db.RunQueryColNameOnAcadspace(sql2)
		#print results2

		if results2:
			for each in results2:
				user_total = each['total']
				form_code = each['form_code']
				year = each['year']-1
				sql3 = "SELECT (sum(`total`)/count(`user_code`)) AS `avg` from `undergraduate_record` INNER JOIN `undergraduate`ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND `undergraduate_record`.`form_code` = '%s' AND `institute name`='%s' AND YEAR(STR_TO_DATE(`undergraduate_record`.`data_field_1`,'%s')) = '%s'"%(form_code,results[0]['institute name'],"%Y-%m-%d",year)
#	above query get following data from  undergraduate record
#	AVG :- users average marks 
				results3 = db.RunQueryColNameOnAcadspace(sql3)
				#print results3
				if results3[0]['avg'] is None:
					avg = 0
				else:
					avg = round(results3[0]['avg'],2)

				sql4 = "SELECT `form_title` FROM `form_field` WHERE `form_id` = '%s'"%(form_code)
#	above query get following data from  undergraduate record
#	form_title :- form title for x-axis 
				results4 = db.RunQueryColNameOnAcadspace(sql4)
				#print results4
#graph data contain following graph_info
#	x-axis:- form title
#	y-axis1 :- user marks
#	y-axis2 :- previous user average marks
				graph_data.append({"x-axis":results4[0]['form_title'],"y-axis1":float(user_total),"y-axis2":float(avg)})
#series data contain
#	valueField :- used for plot graph data
#	name :- label for each valueField 

			series.append({"valueField":"y-axis1","name":"Your score"})
			series.append({"valueField":"y-axis2","name":"Previous Batch avg"})
			
			related_data ={
					 "Question":"How am i performing compare with previous year Batch?",
					 "Answer_Type":"Comparison_graph",
					 "Description": "This chart indicates your overall performance compare to your previous batch performance.",
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
#return null data
		print "unable to update data"
		return "null"


def dependancies():
# form no which is used to match and run script
	dependent_forms = ["3010101*","3010201*","3010301*","3010401*"]
#return data to match
	return dependent_forms


def execute(db,user_code,code):
#remove * from form code
	form_code = code.replace("*","")
	print "form_no"+form_code
	stat = "Partial"
	stat = "Failed"
	stat = "Success"
	data = operation(db,user_code,form_code)
#return data in json format
	result = {'3A':data}
	return [stat,result]