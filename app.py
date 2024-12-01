from flask import Flask, render_template
from bokeh.embed import components
from bokeh.plotting import figure

app = Flask(__name__, template_folder='app/templates')

@app.route('/')
def hello_world():
    return render_template('index.html')

@app.route('/hello-bokeh')
def hello_bokeh():
    # Create a new plot
    p = figure(title="Hello, Bokeh!", x_range=(0, 10), y_range=(0, 10))
    p.text(x=[5], y=[5], text=['Hello, Bokeh!'], text_align='center', text_baseline='middle')

    # Embed plot into HTML via Flask Render
    script, div = components(p)
    return render_template('hello_bokeh.html', script=script, div=div)



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
