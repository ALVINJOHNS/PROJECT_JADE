from flask import Blueprint, jsonify,request

#-----------------------------------------------------------------------------------------------
#  USER PROJECTS AND MANAGEMENT
#  STARTING FROM HERE
#-----------------------------------------------------------------------------------------------
userProjects_api = Blueprint('userProjects_api', __name__)

@userProjects_api.route("/user/<uid>/projects/<no>/<proj_name>/<short_desc>/<long_desc>", methods = ['POST'])
def createUserProjects(uid,no,proj_name,short_desc,long_desc):
    from app import mysql
    
    if request.method == 'POST':
        uniqueIDProjects = str(uid) + "projects"
        for i in range(no):
          team_member = "team_member" + str(i)
          more_info = "more_info" + str(i)
          
          cursor = mysql.cursor()
          cursor.execute('''ALTER TABLE {projects} ADD %s VARCHAR(255), %s VARCHAR(255)'''.format(projects = uniqueIDProjects),(team_member,more_info))
          mysql.commit()
        cursor = mysql.cursor()
        cursor.execute('''INSERT INTO {projects}(name,short_description,long_description,project_id,user_id) VALUES(%s,%s,%s,%s,%s);'''.format(projects=uniqueIDProjects), (proj_name, short_desc, long_desc, 0,uid))
        mysql.commit()
 
        cursor.execute('''SELECT id FROM {projects} ORDER BY id DESC LIMIT 1'''.format(projects=uniqueIDProjects))
        account1 = cursor.fetchone()  
        
        postid = str(uid) + str(account1[0])     
        cursor.execute('''UPDATE {projects} SET project_id = %s WHERE id= %s;'''.format(projects=uniqueIDProjects),(int(postid), account1[0]))
        mysql.commit() 
    else:
        return "Method not allowed"
    
@userProjects_api.route("/user/uid/projects/<team_member>/<more_info>/<no>")
def memberDetails(uid,team_member,no,more_info):
    from app import mysql
    
    for i in range(no):
        team_member1 = str(uid) + "1"
    
    
    