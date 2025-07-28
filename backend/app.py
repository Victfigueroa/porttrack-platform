from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "PortTrack API funcionando correctamente", 200

@app.route("/status")
def status():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
