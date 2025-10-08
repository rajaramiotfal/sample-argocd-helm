from flask import Flask
import os
app = Flask(__name__)

@app.get("/")
def hello():
    return "Hello from App2 (Flask)! 1.2 Version"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.getenv("PORT", "8080")))