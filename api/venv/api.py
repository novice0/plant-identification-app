from flask import Flask, request, jsonify
import werkzeug

app = Flask(__name__)


@app.route("/upload", methods=["POST"])
def upload():
    if request.method == "POST":
        imagefile = request.files["image"]
        filename = werkzeug.utils.secure_filename(imagefile.filename)
        imagefile.save("./clickedimages/" + filename)
        return jsonify({"message": "Image uploaded succesfully"})


if __name__ == "__main__":
    app.run(debug=True, port=5000)
