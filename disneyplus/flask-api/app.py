from flask import Flask, jsonify
from flask_cors import CORS
import os
import psycopg2
from retrying import retry

# Create a Flask application
app = Flask(__name__)
CORS(app)

# Retry decorator to retry connection to PostgreSQL database
@retry(wait_fixed=1000, stop_max_delay=10000)
def connect_to_db():
    return psycopg2.connect(
        dbname=os.environ['NAMEDB'],
        user=os.environ['USERDB'],
        password=os.environ['PASSDB'],
        host=os.environ['HOSTDB']
    )

# Define a route to fetch data from the database
@app.route('/discover/movie')

def index():
    try:
        connection = connect_to_db()
        cursor = connection.cursor()
        cursor.execute('SELECT m2.id, backdrop_path, poster_path, original_title, title, genre_id FROM movies2 m2 INNER JOIN movie_genres mg ON m2.id = mg.movie_id WHERE genre_id = 28')
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        results = [{'id': row[0], 'backdrop_path': row[1], 'poster_path': row[2], 'original_title': row[3], 'title': row[4], 'genre_id': row[5]} for row in data]  # Constructing list of dictionaries with desired fields
        return jsonify({'results': results})  # Returning data as JSON
    except Exception as e:
        return jsonify({'error': str(e)}), 500

# Start the Flask server
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
