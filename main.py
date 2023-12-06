import mysql.connector
import os
import time
from flask import Flask, redirect, render_template
from dotenv import load_dotenv

app = Flask(__name__)

load_dotenv()

# Render the homepage with buttons
@app.route('/')
def index():
    return render_template('index.html')

# Redirect to post_app
@app.route('/redirect-7000')
def redirect_7000():
    return redirect(f'app_post')

# Redirect to music_app
@app.route('/redirect-8000')
def redirect_8000():
    return redirect(f'app_music')

# Redirect to documents_app
@app.route('/redirect-9000')
def redirect_9000():
    return redirect(f'app_doc')

if __name__ == '__main__':
    app.run(port=8080)
