from flask import Flask
import psycopg2

conn = psycopg2.connect(
    host="db",
    database="app_db",
    user="app_user",
    password="app_password")

cur = conn.cursor()

cur.execute("SELECT * FROM USERS")

app = Flask(__name__)

@app.route('/')
def index():
    return str(cur.fetchall())

if __name__ == '__main__':
      app.run(host='0.0.0.0', port=8080)
