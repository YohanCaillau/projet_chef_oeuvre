import os
import dash
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
import plotly.graph_objs as go
import plotly.express as px
import numpy as np
from dotenv import load_dotenv
from sqlalchemy import create_engine

path='C:/Users/utilisateur/Desktop/Voiture_Autonome/bdd/.env'

load_dotenv(dotenv_path=path)
user=os.getenv("MYSQL_USER")
password=os.getenv("MYSQL_PASSWORD")
host=os.getenv("MYSQL_HOST")
database=os.getenv("MYSQL_DATABASE")
port=os.getenv("MYSQL_PORT")

engine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user=user,
                               pw=password,
                               db=database))

cnxn = engine.connect()

df = pd.read_sql("SELECT steering_angle FROM Lane_Navigation_Images WHERE ride_id = 1", cnxn) # WHERE ride_id = 1

df_model = pd.read_sql("SELECT * FROM Lane_Navigation_Models", cnxn)

app_name = 'dash-mysqledataplot'
 
external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']
 
app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.title = 'SQL + Dash'

# print(df['steering_angle'])

# trace = go.Bar(x=df.steering_angle, name='Distribution of angles')

# create a simple histogram
counts, bins = np.histogram(df)
bins = 0.5 * (bins[:-1] + bins[1:])
angle_bar = px.bar(x=bins, y=counts, labels={'x':'Steering Angle', 'y':'Count'}, title='Steering Angle Distribution for Ride 1')

trace = px.histogram(df, x="steering_angle", title='Steering Angle Distribution')

# create a bar distribution for the model
model_bar = px.bar(df_model, x="model", y="mse", labels={'x':'Models', 'y':'MSE'}, title='Evalution of Navigation Models', color="mse", color_continuous_scale='speed')

app.layout = html.Div(children=[
# Title of the page
    html.Div([
            html.H1("DeepPiCar Dashboard", style={'textAlign': 'center'})]),

# All elements from the top of the page
    html.Div([
        html.Div([
            dcc.Graph(
            id='steering-l-graph',
            figure=angle_bar, responsive = True),
        ], className='six columns'),

        html.Div([
            dcc.Graph(
            id='steering-r-graph',
            figure=model_bar, responsive = True),
        ], className='six columns'),
    ], className='row'),

# New Div for all elements in the new 'row' of the page
    html.Div([
        html.Div([
            dcc.Graph(
            id='steering-ul-graph',
            figure={
            'data': [trace],
            'layout':go.Layout(title='MySQL Orders Data', barmode='stack')
            }),
        ], className='six columns'),

        html.Div([
            dcc.Graph(
            id='steering-ur-graph',
            figure={
            'data': [trace],
            'layout':go.Layout(title='MySQL Orders Data', barmode='stack')
            }),
        ], className='six columns'),
    ], className='row'),
])

if __name__ == '__main__':
    app.run_server(debug=True)
