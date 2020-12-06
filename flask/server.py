from flask import Flask, render_template
import sys
sys.path.append('../ch05/')
import testfunction
app = Flask(__name__, static_folder='outputs')

@app.route('/')
def index():
    # print(testfunction.test())
    return testfunction.test()

@app.route('/image')
def image():
    result = testfunction.test()
    return render_template('test.html', result = result)


if __name__ == '__main__':
     app.run(debug=True, host='0.0.0.0', port=8080)