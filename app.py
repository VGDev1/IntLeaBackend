from flask import  Flask, jsonify, abort, make_response, request
import database

app = Flask(__name__)

@app.route('/') # simple index method
def index():
    return "Interactivelearning"

@app.route('/api/test') # returnning a simple json
def get_testjson():
    return jsonify({'Test': 'testing'})

@app.route('/api/question/<int:number>', methods=['GET']) 
def flask_get_question(number):
    response = get_question(str(number))
    if(response == 0):
        abort(404)
    else: 
        return jsonify({'question': database.get_question(str(number))})


@app.route('/api/login', methods=['POST']) 
def flask_login():
    print(request.json['classCode'])
    if not request.json or not 'classCode' in request.json:
        abort(400)
    else:
        response = database.authentication(request.json['classCode'])
        return jsonify({'result': response }) 

@app.errorhandler(404) # error handler to answer 404 with json
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__ == '__main__':
    app.run(debug=True)