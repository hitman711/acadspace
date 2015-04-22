# import database as db
# import MySQLdb
# import json
# import sys
# import os
# import glob
# import re
# import pprint

# Completed_Analytics = json.dumps(json.loads('{"Total_Edited_Forms":3,"Edited_Form_List":["0301010102","0501010007"]}'))
# Completed_Analytics = str(MySQLdb.escape_string(Completed_Analytics))


# Partial_Analytics = json.dumps(json.loads('{}'))
# Partial_Analytics = str(MySQLdb.escape_string(Partial_Analytics))

# user_id = 'e1MFjZzOocq8ufL'
# user_id = str(MySQLdb.escape_string(user_id))



# # db.RunQuery("UPDATE `user_analytic_stat` SET `record_update_stat`='4',`record_update_info`='{}', `Completed_Analytics`='{\"Edited_Form_List\": [\"0301010102\", \"0501010007\"], \"Total_Edited_Forms\": 3}',`Partial_Analytics`='{}' WHERE `user_id` = 'e1MFjZzOocq8ufL'")


# Query = "UPDATE `user_analytic_stat` SET `record_update_stat`='2',`record_update_info`='{}', `Completed_Analytics`='%s',`Partial_Analytics`='%s' WHERE `user_id` = '%s'"%(Completed_Analytics,Partial_Analytics,user_id)

# db.RunQuery(Query)



import sched, time
s = sched.scheduler(time.time, time.sleep)
def do_something(sc): 
    print "Doing stuff..."
    # do your stuff
    sc.enter(60, 1, do_something, (sc,))

s.enter(60, 1, do_something, (s,))
s.run()

