import MySQLdb
import json
import datetime
import os

#--------------------------for graph data saved info ------


def TotalUsers(userId,data,minimum,maximum,graphName,title):
	test ={"dataSource":"","minimum":"","maximum":"","graphName":""}
	Cfile_name = "../../UserJson/Dashboard/"+userId+".json"
	fileData = json.loads(open(Cfile_name).read())
	#fileData['YearlyUser']['dataSource'].append(data)
	#print type(test)

	test['dataSource'] = data
	test['minimum'] = minimum-5
	test['maximum'] = maximum+5
	test["graphName"] = graphName
	test['graphFunction'] = str("NormalGraph")
	test['title'] = title
	fileData['TotalUsers'] = test
	open(Cfile_name,'w').write(json.dumps(fileData))

def YearlyUsers(userId,data,minimum,maximum,graphName,series,title):
	test ={"dataSource":"","minimum":"","maximum":"","graphName":""}
	Cfile_name = "../../UserJson/Dashboard/"+userId+".json"
	fileData = json.loads(open(Cfile_name).read())
	#print data['dataSource']
	test['dataSource'] = data['dataSource']
	test['minimum'] = minimum-5
	test['maximum'] = maximum+5
	test['graphName'] = graphName
	test['graphFunction'] = str("ComparisionGraph")
	test['series'] = series
	test['title'] = title
	fileData['YearlyUsers'] = test
	open(Cfile_name,'w').write(json.dumps(fileData))

def YearlyUserMarks(userId,data,minimum,maximum,graphName,series,title):
	test ={"dataSource":"","minimum":"","maximum":"","graphName":""}
	Cfile_name = "../../UserJson/Dashboard/"+userId+".json"
	fileData = json.loads(open(Cfile_name).read())
	test['dataSource'] = data['dataSource']
	test['minimum'] = minimum-5
	test['maximum'] = maximum+5
	test['graphName'] = graphName
	test['graphFunction'] = str("ComparisionGraph")
	test['series'] = series
	test['title'] = title
	fileData['YearlyUserMarks'] = test
	open(Cfile_name,'w').write(json.dumps(fileData))



def CreateFile(file_name):
	Cfile_name = "../../UserJson/Dashboard/"+file_name+".json"
	file_name = open(os.path.join("../../UserJson/Dashboard/"+file_name+".json"),"w+")
	file_name.write('{"TotalUsers":{},"YearlyUsers":{},"YearlyUserMarks":{}}')
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

nameList = {"IT":"Information Technology","COMP":"Computer Programming","ELEX":"Electronic Engineering","EXTC":"Electronic & Telecommunication"}

jsonFormat = json.loads('{"stream":"","total":""}')
TotalUserData = []
TotalYearlyUserData ={}
years = []
user_record = []
series1 =[]
series2 = []
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
			TotalUserData.append({"stream":streamlist[each_code],"Total":result3[0][streamlist[each_code]]})

#..................PiChart for TotalUser .....................
			#totalUsers(institute_code,result3[0])


			query4 ="SELECT ('%s') AS `stream`,YEAR(STR_TO_DATE(`data_field_1`,'%s')) AS `year`, count(`user_code`) AS `total user`,(ROUND(sum(`total`)/count(`user_code`),2)*10) AS`total marks` FROM `undergraduate_record`INNER JOIN `undergraduate` ON `undergraduate_record`.`user_code`=`undergraduate`.`unique_code` AND `university name`='%s' AND `institute name`='%s' AND `form_code` LIKE '%s' GROUP BY YEAR(STR_TO_DATE(`data_field_1`,'%s'))"%(streamlist[each_code],"%Y-%m-%d",university_name,institute_name,str(each_code)+"%","%Y-%m-%d")
			result4 = databaseSearch(query4)
			for i in range(0, len(result4)):
				if result4[i]['year'] not in years:
					years.append(result4[i]['year'])
			
#.................................YEARLY user Record with marks for both year wise stream user and there marks data.........
			#yearlyUser(streamlist[each_code],institute_code,streamlist[each_code],result4)
			TotalYearlyUserData[streamlist[each_code]] = result4 
			

		TotalUsers(institute_code,TotalUserData, min(TotalUserData[i]['Total'] for i in range(0, len(TotalUserData))), max(TotalUserData[i]['Total'] for i in range(0, len(TotalUserData))),"BarChart","users available from your institute")
		
		years.sort()
		userMarks = {"dataSource":[]}
		userCount = {"dataSource":[]}
		min_marks = []
		max_marks = []
		userCount = {"dataSource":[]}
		min_user = []
		max_user = []

		for i in years:
			jsonUserMarks ={"year":""}
			jsonUser = {"year":""}
			jsonUserMarks['year'] = i
			jsonUser['year'] = i
			for j in TotalYearlyUserData:
				for k in range(0,len(TotalYearlyUserData[j])):
					if TotalYearlyUserData[j][k]['year'] ==i:
						jsonUserMarks[j] = TotalYearlyUserData[j][k]['total marks']
						jsonUser[j] = TotalYearlyUserData[j][k]['total user']


			userMarks['dataSource'].append(jsonUserMarks)
			userCount['dataSource'].append(jsonUser)
			 

		for i in TotalYearlyUserData:
			min_marks.append(min(TotalYearlyUserData[i][j]['total marks'] for j in range(0, len(TotalYearlyUserData[i]))))
			max_marks.append(max(TotalYearlyUserData[i][j]['total marks'] for j in range(0, len(TotalYearlyUserData[i]))))
			min_user.append(min(TotalYearlyUserData[i][j]['total user'] for j in range(0, len(TotalYearlyUserData[i]))))
			max_user.append(max(TotalYearlyUserData[i][j]['total user'] for j in range(0, len(TotalYearlyUserData[i]))))
		
		for each in streamlist.values():
			series1.append({"valueField":each,"name":nameList[each]})
		YearlyUserMarks(institute_code,userMarks,min(min_marks),max(max_marks),"YearlyUser1",series1,"Overall user Performance")

		YearlyUsers(institute_code,userCount ,min(min_user),max(max_user),"YearlyUser2",series1,"users data available from first user register")
		
		series1 =[]
		addlist =[]
		TotalUserData =[]
		TotalYearlyUserData ={}


except:
	raise




