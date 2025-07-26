from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')  # This will load templates/index.html

@app.route('/health')
def health_check():
    return {'status': 'healthy', 'message': 'Application is running'}, 200

if __name__ == '__main__':
    # Get port from environment variable or default to 5000
    port = int(os.environ.get('PORT', 5000))
    # Bind to all interfaces for Docker container
    app.run(host='0.0.0.0', port=port, debug=False)
