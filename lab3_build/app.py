# Importar los archivos de flask
from flask import Flask
 
app = Flask(__name__)
 
@app.route('/')
def index():
    return 'Hola desde Docker-landia, Humano!'
 
# main driver function
if __name__ == "__main__":
    app.run()