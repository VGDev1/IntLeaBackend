from flask import  Flask, jsonify, abort, make_response, request
from flask_cors import CORS
import database

app = Flask(__name__)
CORS(app)
app.config['JSON_AS_ASCII'] = False


@app.route('/') # simple index method
def index():
    return "Interactivelearning"
    
@app.route('/api/test') # returnning a simple json
def getTestjson():
    return jsonify({'Test': 'testing'})

@app.route('/api/nbrofquestions/<table>', methods=['GET']) 
def flaskGetNumberOfQuestions(table):
    response = database.getNumberOfQuestions(table)
    if(response == 0):
        abort(404)
    else: 
        return jsonify({'numberOfQuestions': response})


@app.route('/api/question/<int:number>', methods=['GET']) 
def flaskGetQuestion(number):
    response = database.getQuestion(str(number))
    if(response == 0):
        abort(404)
    else: 
        return jsonify({'question': response})


@app.route('/api/login', methods=['POST']) 
def flaskLogin():
    print(request.json['classCode'])
    if not request.json or not 'classCode' in request.json:
        abort(400)
    else:
        response = database.authentication(request.json['classCode'])
        return jsonify({'result': response }) 

@app.errorhandler(404) # error handler to answer 404 with json
def notFound(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__ == '__main__':
    app.run(debug=True)