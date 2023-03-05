from flask import Blueprint, jsonify,request

#-----------------------------------------------------------------------------------------------
#  USER PROJECTS AND MANAGEMENT
#  STARTING FROM HERE
#-----------------------------------------------------------------------------------------------
userProjects_api = Blueprint('userProjects_api', __name__)

@userProjects_api.route("/user/<uid>/<no>/projects/<proj_name>/<short_desc>/<long_desc>", methods = ['POST'])
def createUserProjects(uid,no,proj_name,short_desc,long_desc):
    from app import mysql
    
    if request.method == 'POST':
        uniqueIDProjects = str(uid) + "posts"
    else:
        return "Method not allowed"
    