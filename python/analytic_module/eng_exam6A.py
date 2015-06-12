#-------------------------------------------------------------------------------
# Name:        USER PERFORMANCE WITH FINAL YEAR BATCH
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
import time		#time lib

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
			sql3 = "SELECT `unique_code` from `undergraduate_record` INNER JOIN `undergraduate`ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND `undergraduate_record`.`form_code` = '%s' AND `institute name`='%s' AND YEAR(STR_TO_DATE(`undergraduate_record`.`data_field_1`,'%s')) = '%s'"%(int(match_code+"08"),results[0]['institute name'],"%Y-%m-%d",time.strftime("%Y"))
#	above query get following data from  undergraduate record
#	unique_code :- unique code from current last year batch
			results3 = db.RunQueryColNameOnAcadspace(sql3)
			#print results3
			if results3:
				#print results3
				for each in range(0, len(results2)):
					user_total = results2[each]['total']
					form_code = results2[each]['form_code']
					year = results2[each]['year']
					for lastYearuser in results3:
						sql4 ="SELECT `total` FROM `undergraduate_record` where `user_code` ='%s' AND `form_code`='%s' "%(lastYearuser['unique_code'], form_code)
#	above query get following data from  undergraduate record
#	total :- total marks of current year batch from specific exam
						results4 = db.RunQueryColNameOnAcadspace(sql4)
						#print results4
						total = total + float(results4[0]['total'])
#avrage marks of all user who field form data
					avg = round((total/len(results3)),2)
					#print avg
					sql5 = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(form_code)
#	above query get following data from  undergraduate record
#	form_title :- form title for x-axis 
					results5 = db.RunQueryColNameOnAcadspace(sql5)
					#print results5
#graph data contain following graph_info
#	x-axis:- form title
#	y-axis1 :- user marks
#	y-axis2 :- current final year average marks
					graph_data.append({"x-axis":results5[0]['form_title'],"y-axis1":float(user_total),"y-axis2":float(avg)})
					avg =0
					total =0
#series data contain
#	valueField :- used for plot graph data
#	name :- label for each valueField 
				series.append({"valueField":"y-axis1","name":"my score"})
				series.append({"valueField":"y-axis2","name":"current final year batch score"})
				related_data ={
					 "Question":"How am i performing compare to current final year batch performance?",
					 "Answer_Type":"Comparison_graph",
					 "Description": "This chart indicates user overall performance compare with current final year batch.",
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
			#print related_data
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
	stat = "Partial"
	stat = "Failed"
	stat = "Success"
	data = operation(db,user_code,form_code)
#return data in json format
	result = {'6A':data}
	return [stat,result]