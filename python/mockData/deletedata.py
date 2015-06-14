import MySQLdb

conn = MySQLdb.connect('localhost','root','28263506','acadspace')
cursor = conn.cursor()
table_list =["register","user_filled_form","user_analytic_stat","undergraduate_record","undergraduate","active_user"]
for each in table_list:
	sql = "DELETE FROM `%s`"%(each)
	#print sql
	cursor.execute(sql)
	conn.commit()