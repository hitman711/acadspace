import json
from datetime import datetime

def operation(db,unique_code):
    newlist =[1,2,3,4,5,6,7,8]
    filed_list =["A","B","C","D","E","F","G","H","I","J","K","L","M","N"]
    newlist.sort()
    college_rank =0
    university_rank =0
    graph_data =[]
    series =[]
    related_data ={}
    new =''
    total =0
    i = 0

    sql = "SELECT * from `undergraduate` WHERE `unique_code`='%s'"%(unique_code)
    try:
        results = db.RunQueryColNameOnAcadspace(sql)
        del[results[0]['id']]
        del[results[0]['unique_code']]
        for index in results:
#column name contain database column names like college and university
            column_name =index.keys()
#column value contain database column value of above columns
            column_value = index.values()

        query = '';
        for column in column_name:
            query = query+"`undergraduate`.`"+column+"` ='"+index[column]+"' AND "
            extract_query = "select count(`user_record`.`user_code`) AS `Rank` from `user_record` INNER JOIN `undergraduate` ON `user_record`.`user_code` =`undergraduate`.`unique_code` AND "+query+""
            university_query ="select count(`user_record`.`user_code`) AS `Rank` from `user_record` INNER JOIN `undergraduate` ON `user_record`.`user_code` =`undergraduate`.`unique_code` AND "+"`undergraduate`.`"+column_name[1]+"` ='"+index[column_name[1]]+"' AND "+""
            #print university_query
        for form_code in newlist:

            form_no ="30101010"+str(form_code)

#User Marks
            sql2 ="SELECT `data_field_1`,`total` FROM `user_record` WHERE `user_code`='%s' AND `form_code` LIKE '%s'"%(unique_code,form_no)
            user_marks = db.RunQueryColNameOnAcadspace(sql2)
#Available user marks
            if user_marks:
                #print user_marks[0]['data_field_1']
                dates =datetime.strptime( user_marks[0]['data_field_1'], '%Y-%m-%d')
                exam_year = str(dates.year)+'%'
                user_total_marks = user_marks[0]['total']
                #print "user marks = "+str(user_total_marks)

#University rank
                sql3=university_query+"`user_record`.`form_code` = '%s' AND `user_record`.`total`>%s AND `user_record`.`data_field_1` LIKE '%s'"%(form_no,user_total_marks,exam_year)
                results3 = db.RunQueryColNameOnAcadspace(sql3)
                for index in results3:
                    university_rank =index['Rank']+1
                    #print "University Rank ="+str(university_rank)

#College wise rank
                sql4 = extract_query+"`user_record`.`form_code` = '%s' AND `user_record`.`total`>%s"%(form_no,user_total_marks)
                results4 = db.RunQueryColNameOnAcadspace(sql4)
                for index in results4:
                    college_rank =index['Rank']+1
                    #print "COllege Rank ="+str(college_rank)

#form name
                sql5 ="SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(form_no)
                form_name = db.RunQueryColNameOnAcadspace(sql5)
                form_name = form_name[0]['form_title']
                #print form_name


#JSON format
                i = i+1
                related_data["4"+filed_list[i]]={
                    "set":"#4"+filed_list[i],
                    "type": "rank",
                    "Question": form_name,
                    "college_rank":"College wise rank",
                    "college":college_rank,
                    "university_rank":"University wise rank",
                    "university":university_rank
                    }

    except:
        print "Error: unable to fecth data"

    return related_data

def dependancies():
    dependent_forms = []
    dependent_forms.append("3010101*")
    return dependent_forms


def execute(db,user_code):
    #print "Engineering Rule 1 Running "+user_code
    stat = "Partial"
    stat = "Failed"
    stat = "Success"
    data = operation(db,user_code)
    result = data
    return [stat,result]