import MySQLdb
import json

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

query1 = "SELECT `institute name`,`university name` FROM `institute`"
try:
	institute = databaseSearch(query1)
	for each in institute:
		institute_name = each['institute name']
		university_name = each['university name']

		query2 ="SELECT COUNT(`unique_code`) AS `total_user` FROM `undergraduate` WHERE `university name`='%s' AND `institute name`='%s'"%(university_name,institute_name)
		result2 = databaseSearch(query2)
		print institute_name+ " = "+str(result2[0]['total_user'])

		for each_code in streamlist.keys():
			query3 = "SELECT COUNT(DISTINCT `user_code`) AS `Total %s users` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` LIKE '%s'"%(streamlist[each_code],university_name,institute_name,str(each_code)+"%")
			#print query3
			result3 = databaseSearch(query3)
			print result3

			for index in range(1,9):
				query4 = "SELECT  `data_field_1` AS `Date`,`form_code`,COUNT(`user_code`) AS `%s`,ROUND(SUM(`total`)/COUNT(`user_code`),2) AS `AVG` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` = '%s' GROUP BY `data_field_1`"%(streamlist[each_code],university_name,institute_name,int(each_code+"0")+index)
				result4 = databaseSearch(query4)
				if result4:
					print result4

#SELECT  DISTINCT(`user_code`),`data_field_1`,`total` FROM `undergraduate_record` INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='Mumbai' AND `institute name`='PVPP COE' AND `form_code` = '301010101'


except:
	raise
