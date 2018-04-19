from flask import Flask, render_template


app = Flask(__name__)

@app.route('/<name>')
def render_static(name):
    #return "Hello World"
    return render_template("index.html", content=name.upper())

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
