# Flask API

not configured in docker yet, just for local testing

Run the Flask App

```bash
> python .\flask_api.py
 * Serving Flask app 'flask_api'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
127.0.0.1 - - [02/Nov/2023 00:27:37] "GET / HTTP/1.1" 200 -
127.0.0.1 - - [02/Nov/2023 00:27:38] "GET /favicon.ico HTTP/1.1" 404 -
127.0.0.1 - - [02/Nov/2023 00:27:45] "GET /docs HTTP/1.1" 404 -
```

When deploying a Flask app in production, you should use a production-ready web server, such as Gunicorn, uWSGI, or a web server like Nginx or Apache acting as a reverse proxy in front of your Flask application.

