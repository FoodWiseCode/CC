import os
os.environ['TF_CPP_MIN_LOG_LEVEL']='2'
os.environ['TF_ENABLE_ONEDNN_OPTS']='0'
from flask import Flask, request, jsonify
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, create_access_token
from flask_swagger_ui import get_swaggerui_blueprint
from flask_mysqldb import MySQL
import bcrypt
from PIL import Image
from io import BytesIO
import tensorflow as tf,keras
# import tensorflow.python as tf
# from keras.src import  backend
# from keras.src.saving import saving_lib
# from keras.src.saving.legacy import serialization as legacy_serialization
# from keras.src.saving.serialization_lib import deserialize_keras_object
# from keras.src.saving.serialization_lib import serialize_keras_object
# from  keras.src.utils import losses_utils
# from keras.src.utils import tf_utils

# from tensorflow.python.ops.ragged import ragged_map_ops
# from tensorflow.python.ops.ragged import ragged_util
# LABEL_DTYPES_FOR_LOSSES = { tf.losses.sparse_softmax_cross_entropy: "int32", tf.keras.losses.sparse_categorical_crossentropy: "int32", }
# from keras import kera

import numpy as np
import base64

app = Flask(__name__)

jwt = JWTManager(app)

SECRET_KEY = os.environ.get('SECRET_KEY', 'rahasia')
# app.config["MYSQL_USER"] = 'root'
# app.config["MYSQL_PASSWORD"] = 'root'
# app.config["MYSQL_DB"] = 'foodwise'
# # app.config["MYSQL_UNIX_SOCKET"] = '/cloudsql/bangkit2023-402907:asia-southeast2:foodwise'
# # Extra configs, optional:
# app.config["MYSQL_CURSORCLASS"] = "DictCursor"
app.config['SECRET_KEY'] = SECRET_KEY

# MySQL configurations
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'foodwise'


mysql = MySQL(app)


# os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
# Load the Keras model
model_predict = tf.keras.models.load_model('model-images2.h5')
# model_predict.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])
# loss = tf.compat.v1.losses.sparse_softmax_cross_entropy(labels, logits)
# is_eager = tf.compat.v1.executing_eagerly_outside_functions()
# pooled = tf.nn.max_pool2d(input, ksize=[1, k_height, k_width, 1], strides=[1, stride_y, stride_x, 1], padding='SAME')
class_names = ['banana peels', 'egg shells', 'orange peels', 'rotten apples', 'rotten bananas', 'rotten cucumbers', 'rotten oranges', 'rotten tomatoes']


@app.route("/")
def index():
    print("Response success")
    return "Response Success!"

@app.route('/register',methods=['POST'])
def user_register():
    data = request.get_json()
    email = data.get('email')
    username = data.get('username')
    password = data.get('password')
    if not email or not username or not password:
            return jsonify({'error': 'Email, username, dan password diperlukan'}), 400
    try:
        db = mysql.connection.cursor()
        db.execute('SELECT * FROM users WHERE username = %s', (username,))
        # Cek apakah username sudah terdaftar
        user = db.fetchone()

        if user:
            return jsonify({'error': 'Username sudah terdaftar'}), 400

        # Hash password
        hashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())

            # Simpan user baru ke database
        sql = 'INSERT INTO users (email, username, password) VALUES (%s, %s, %s)'
        db.execute(sql, (email, username, hashed_password))
        mysql.connection.commit()

        return jsonify({'message': 'Registrasi berhasil'}), 200

    except Exception as e:
        print(str(e))
        return jsonify({'error': 'Internal Server Error'}), 500
    finally:
        db.close()

@app.route('/login', methods=['POST'])
def login ():
    try:
        username = request.json['username']
        password = request.json['password']
        db = mysql.connection.cursor()
        db.execute("SELECT * FROM users WHERE username = %s", (username,))
        user = db.fetchall()

        # Check if the user exists
        if user:
            # print(user)
            # print(user[0][3])
            hashed_password = user[0][3]
            # print(user[3])
            if bcrypt.checkpw(password.encode('utf-8'), hashed_password.encode('utf-8')):
                # print(user[3])
                    # Jika password valid, buat token JWT
                token = create_access_token(identity={'username': user[0][2]})
                return jsonify({
                    'message': 'Login Success',
                    'token_jwt': token
                }), 200
            else:
                return jsonify({'error': 'Username atau password salah'}), 401
    except Exception as e:
        print(str(e))
        return jsonify({'error': 'Internal Server Error'}), 500
    
@app.route('/predict', methods=['POST'])
@jwt_required()
def predict():
    try:
        # Get base64-encoded image from the request
        base64_data = request.json['base64']
        
        # Decode base64 data and convert it to a PIL Image
        image_data = base64.b64decode(base64_data)
        img = Image.open(BytesIO(image_data))
        
        # Resize and preprocess the image
        img = img.resize((150, 150))
        img_array = np.array(img) / 255.0
        img_array = np.expand_dims(img_array, axis=0)

        # Get predictions for the image
        predictions = model_predict.predict(img_array, batch_size=1)

        # Get the predicted class
        predicted_class = np.argmax(predictions)

        # Check if predicted_class is within the valid range
        if 0 <= predicted_class < len(class_names):
            # Get the class label for the predicted class
            predicted_label = class_names[predicted_class]

            # result = {
            #     # 'predicted_class': int(predicted_class),  # Convert to standard int
            #     # 'predicted_label': predicted_label
                
            # }
            if not predicted_label:
                return jsonify({'error': 'Predicted label is required in the query parameters.'}), 400

            # Search the 'dataset' table based on the predicted label
            db = mysql.connection.cursor()
            db.execute("SELECT * FROM dataset WHERE ingredients LIKE %s", ('%' + predicted_label + '%',))
            data = db.fetchall()
            db.close()

            # Process the retrieved data (customize based on your needs)
            results = []
            for row in data:
                result_item = {
                    'id': row[0],
                    'name': row[1],  # Replace 'column1', 'column2', etc., with actual column names
                    'description': row[2],
                    'instructions': row[3],  # Assuming predicted_label is in the fourth column
                    'ingredients': row[4],  # Assuming timestamp is in the fifth column
                    'source':row[5]
                }
                results.append(result_item)
            return jsonify(results), 200
        else:
            return jsonify({'error': 'Predicted class index is out of bounds.'}), 500

    except Exception as error:
        print(str(error))
        return jsonify({'error': 'Internal Server Error'}), 500


SWAGGER_URL = '/swagger'  # URL for exposing Swagger UI (without trailing '/')
API_URL = '/static/swagger.json'  # Our API url (can of course be a local resource)

swaggerui_blueprint = get_swaggerui_blueprint(
    SWAGGER_URL,  # Swagger UI static files will be mapped to '{SWAGGER_URL}/dist/'
    API_URL,
    config={  # Swagger UI config overrides
        'app_name': "foodwise application"
    },
)

app.register_blueprint(swaggerui_blueprint, url_prefix=SWAGGER_URL)

if __name__ == "__main__":
    app.run( host="0.0.0.0", port=int(os.environ.get("PORT",8080)))