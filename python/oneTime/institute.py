import MySQLdb
import json
import datetime
import os

#--------------------------for graph data saved info ------


def totalUsers(userId,data):
	jsonFormat = json.loads('{"stream":"","total":""}')
	Cfile_name = "../../UserJson/Dashboard/"+userId+".json"
	fileData = json.loads(open(Cfile_name).read())
	jsonFormat['stream'] = data.keys()[0]
	jsonFormat['total'] =data.values()[0]
	fileData['TotalUsers']['dataSource'].append(jsonFormat)
	fileData['TotalUsers']['Titles']['Title1'] ="User register from your institute"
	
	open(Cfile_name,'w').write(json.dumps(fileData))


def yearlyUser(streamName,userId,field,data):
	jsonFormat = json.loads('{"'+streamName+'":'+json.dumps(data)+'}')
	#print jsonFormat
	Cfile_name = "../../UserJson/Dashboard/"+userId+".json"
	fileData = json.loads(open(Cfile_name).read())
	fileData['YearlyUser']['dataSource'].append(jsonFormat)
	
	fileData['YearlyUser']['Titles']['Title1'] = "Institute domain wise performance comparison with past performance"

	fileData['YearlyUser']['Titles']['Title2'] = "Institute domain wise user available"
	open(Cfile_name,'w').write(json.dumps(fileData))





def CreateFile(file_name):
	Cfile_name = "../../UserJson/Dashboard/"+file_name+".json"
	file_name = open(os.path.join("../../UserJson/Dashboard/"+file_name+".json"),"w+")
	file_name.write('{"TotalUsers":{"dataSource":[],"Titles":{}},"YearlyUser":{"dataSource":[],"Titles":{}}}')
	file_name.close()


def instituteRecord(userId,institueName):
	db = MySQLdb.connect("localhost","root","28263506","acadspace" )
	cursor = db.cursor()
	Cfile_name = "../UserJson/Dashboard/"+userId+".json"
	query = "INSERT INTO `institute_record`(`unique_id`, `info_link`, `name`) VALUES ('%s','%s','%s')"%(userId,Cfile_name,institueName)
	#cursor.execute(query)
	#db.commit()
	db.close()
 

#..................................DATABASE.....................
def databaseSearch(query):
	db = MySQLdb.connect("localhost","root","28263506","acadspace" )
	cursor = db.cursor()
	cursor.execute(query)
	data = cursor.fetchall()
	columns = cursor.description
	result = [{columns[index][0]:column for index, column in enumerate(value)} for value in data]
	return result
	db.close()


streamlist ={"30101010":"IT","30102010":"COMP","30103010":"ELEX","30104010":"EXTC"}

user_record = []
json_for_yearly_record = ''

query1 = "SELECT `unique_code` AS `college code`,`institute name`,`university name` FROM `institute`"
try:
	institute = databaseSearch(query1)
	for each in institute:
		institute_name = each['institute name']
		university_name = each['university name']
		institute_code = each['college code']
#.................................CREATE FILE......................
		CreateFile(institute_code)
		instituteRecord(institute_code,institute_name)

		query2 ="SELECT COUNT(`unique_code`) AS `total_user` FROM `undergraduate` WHERE `university name`='%s' AND `institute name`='%s'"%(university_name,institute_name)
		result2 = databaseSearch(query2)
		print ".......................................TOTAL USER in "+institute_name+"...................."
		#print result2
		institute_name+ " = "+str(result2[0]['total_user'])
		for each_code in streamlist.keys():
			query3 = "SELECT COUNT(DISTINCT `user_code`) AS `%s` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` LIKE '%s'"%(streamlist[each_code],university_name,institute_name,str(each_code)+"%")
			#print query3
			result3 = databaseSearch(query3)
#..................PiChart for TotalUser .....................
			totalUsers(institute_code,result3[0])


			query4 ="SELECT ('%s') AS `stream`,YEAR(STR_TO_DATE(`data_field_1`,'%s')) AS `year`, count(`user_code`) AS `total user`,(ROUND(sum(`total`)/count(`user_code`),2)*10) AS`total marks` FROM `undergraduate_record`INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` LIKE '%s' GROUP BY YEAR(STR_TO_DATE(`data_field_1`,'%s'))"%(streamlist[each_code],"%Y-%m-%d",university_name,institute_name,str(each_code)+"%","%Y-%m-%d")
			result4 = databaseSearch(query4)

#.................................YEARLY user Record with marks for both year wise stream user and there marks data.........
			yearlyUser(streamlist[each_code],institute_code,streamlist[each_code],result4)
			
			'''
			for index in range(1,9):
				query4 = "SELECT  STR_TO_DATE(`data_field_1`,'%s') AS `Date`,`form_code`,ROUND(SUM(`total`)/COUNT(`user_code`),2) AS `AVG` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` = '%s' GROUP BY YEAR(STR_TO_DATE(`data_field_1`,'%s'))"%('%Y-%m-%d',university_name,institute_name,int(each_code+"0")+index,'%Y-%m-%d')
				#print query4
				result4 = databaseSearch(query4)
				if result4:
					#print result4

					query5 = "SELECT `form_title` FROM `form_field` WHERE `form_id`='%s'"%(result4[0]['form_code'])
					#result5 = databaseSearch(query5)
					#print result5

			for index in xrange(2,9,2):
				
				query6 = "SELECT YEAR(STR_TO_DATE(`data_field_1`,'%s')) AS `YEAR`,ROUND(sum(`total`)/count(`user_code`),2) AS `%s peroformance` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` BETWEEN '%s' AND '%s'"%('%Y-%m-%d',streamlist[each_code],university_name,institute_name,int(each_code+"0")+(index-1),int(each_code+"0")+index)
				#result6 = databaseSearch(query6)
			'''

except:
	raise




