from flask import Flask

from backend.db_connection import db
from backend.persona_4.devin_blueprint import devin
from backend.persona_2.sally_blueprint import sally
from backend.persona_3.saquon_blueprint import saquon
from backend.persona_1.alex_blueprint import alex
import os
from dotenv import load_dotenv

def create_app():
    print(os.getcwd())
    app = Flask(__name__)

    load_dotenv()

    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')

    app.config['MYSQL_DATABASE_USER'] = os.getenv('DB_USER').strip()
    app.config['MYSQL_DATABASE_PASSWORD'] = os.getenv('MYSQL_ROOT_PASSWORD').strip()
    app.config['MYSQL_DATABASE_HOST'] = os.getenv('DB_HOST').strip()
    app.config['MYSQL_DATABASE_PORT'] = int(os.getenv('DB_PORT').strip())
    app.config['MYSQL_DATABASE_DB'] = os.getenv('DB_NAME').strip() 

    app.logger.info('current_app(): starting the database connection')
    db.init_app(app)

    app.logger.info('current_app(): registering blueprints with Flask app object.')   
    app.register_blueprint(devin, url_prefix='/devin')
    app.register_blueprint(sally)
    app.register_blueprint(saquon)
    app.register_blueprint(alex, url_prefix='/alex')

    return app