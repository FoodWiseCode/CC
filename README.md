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

For enrtypoint you can use 
1. User Registration
Endpoint: /register
Method: POST
http://127.0.0.1:8080/register

2. User Login
Endpoint: /login
Method: POST
http://127.0.0.1:8080/login

3. Predict Image
Endpoint: /predict
Method: POST
http://127.0.0.1:8080/predict

note: you must bring JWT authorization token


3. Swagger
Endpoint: /swagger
Method: GET
http://127.0.0.1:8080/Swagger


