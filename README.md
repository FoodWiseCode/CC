### CC-Foodwise-API

Require Install:


- tensorflow[and-cuda]
- Flask==3.0.0
- Flask-JWT-Extended==4.6.0
- Flask-MySQLdb==2.0.0
- Flask-Swagger-UI== 4.11.1
- Pillow==10.1.0
- gunicorn==21.2.0
- numpy==1.26.2
- bcrypt==4.1.2


1. User Registration
Endpoint: /register
Method: POST
http://127.0.0.1:5000/register




3. User Login
Endpoint: /login
Method: POST

Authentications

POST /authentications
PUT  /authentications
DEL  /authentications
Users

GET  /users
POST /users
PUT  /users/{userId}
DEL is not avalable now
Predictions

POST /predictions/cassava
POST /predictions/rice
POST /predictions/tomato
History

GET  /predict/historys/
GET  /predict/historys/{historyId}
GET  /predict/historys/plant/{plantId}/
GET  /predict/historys/plant/{plantId}/disease/{diseaseId}
POST /histories
DEL  /histories/{historyId}

