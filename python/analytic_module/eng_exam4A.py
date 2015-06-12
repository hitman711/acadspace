#-------------------------------------------------------------------------------
# Name:        USER RANKING (INSTITTUTE AND UNIVERSITY )
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

import json  #json lib     
from datetime import datetime #datetime lib


#db : database name
#unique_code :user unique id
#match_code :form code used for processing get from dependancies function

def operation(db,unique_code, match_code):
#engineering form numbers
    newlist =[1,2,3,4,5,6,7,8]
#graph section list
    filed_list =["A","B","C","D","E","F","G","H"]
#sort list
    newlist.sort()
#processing veriables
    college_rank =0
    university_rank =0
    graph_data =[]
    series =[]
    query = ''
    related_data ={}
    new =''
    total =0
    i = 0

    sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
#   above query get following data from undergraduate table
#   id / unique code / institute name / university name
    results = db.RunQueryColNameOnAcadspace(sql)
    #print results
    try:
        del[results[0]['id']]
        del[results[0]['unique_code']]
        for index in results:
#column name contain database column names like college and university
            column_name =index.keys()
#column value contain database column value of above columns
            column_value = index.values()

        for column in column_name:
#generate sql query for calculate user
            query = query+"`undergraduate`.`"+column+"` ='"+index[column]+"' AND "

            extract_query = "select count(`undergraduate_record`.`user_code`) AS `Rank` from `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
            #print extract_query
            university_query ="select count(`undergraduate_record`.`user_code`) AS `Rank` from `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code` =`undergraduate`.`unique_code` AND "+"`undergraduate`.`"+column_name[1]+"` ='"+index[column_name[1]]+"' AND "+""
            #print university_query
        for form_code in newlist:
#generate form code
            form_no =match_code+"0"+str(form_code)

#User Marks
            sql2 ="SELECT `data_field_1`,`total` FROM `undergraduate_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_no)
#   above query get following data from  undergraduate record
#   data_field_1 :- date
#   total:- total marks get in form field
            user_marks = db.RunQueryColNameOnAcadspace(sql2)
#Available user marks
            if user_marks:
                #print user_marks[0]['data_field_1']
                dates =datetime.strptime( user_marks[0]['data_field_1'], '%Y-%m-%d')
                exam_year = str(dates.year)+'%'
                user_total_marks = user_marks[0]['total']
                #print "user marks = "+str(user_total_marks)

#University rank
                sql3=university_query+"`undergraduate_record`.`form_code` = '%s' AND `undergraduate_record`.`total`>%s AND `undergraduate_record`.`data_field_1` LIKE '%s'"%(form_no,user_total_marks,exam_year)
                #print sql3
                results3 = db.RunQueryColNameOnAcadspace(sql3)
                #print results3
                for index in results3:
                    university_rank =index['Rank']+1
                    #print "University Rank ="+str(university_rank)

#College wise rank
                sql4 = extract_query+"`undergraduate_record`.`form_code` = '%s' AND `undergraduate_record`.`total`>%s AND `undergraduate_record`.`data_field_1` LIKE '%s'"%(form_no,user_total_marks,exam_year)
                #print sql4
                results4 = db.RunQueryColNameOnAcadspace(sql4)
                #print results4
                for index in results4:
                    college_rank =index['Rank']+1
                    #print "COllege Rank ="+str(college_rank)

#form name
                sql5="SELECT CONCAT(  `form_title` ,  ' ',  `field_name` ) AS  `form_title`  FROM  `form_field` WHERE  `form_id` = '%s'"%(form_no)
                form_name = db.RunQueryColNameOnAcadspace(sql5)
                form_name = form_name[0]['form_title']

#JSON format
                related_data["4"+filed_list[i]]={
                    "set":"#4"+filed_list[i],
                    "type": "rank",
                    "Question": form_name,
                    "college_rank":"College wise rank",
                    "college":college_rank,
                    "university_rank":"University wise rank",
                    "university":university_rank
                    }
                i = i+1
                #print related_data["4"+filed_list[i-1]]

            else:
#return null related_data
                related_data["4"+filed_list[i]]={
                    "type": "",
                    "college":""
                }
                i = i+1

    except:
#return null related data
        print "Error: unable to fecth data"
        related_data["4A"]={
                    "type": "",
                    "college":""
                }
    return related_data

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
    data = operation(db,user_code, form_code)
#return data in json format
    result = data
    return [stat,result]