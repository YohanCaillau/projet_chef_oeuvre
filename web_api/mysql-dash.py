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

# Get the autentification informations from env file
path='C:/Users/utilisateur/Desktop/Voiture_Autonome/bdd/.env'

load_dotenv(dotenv_path=path)
user=os.getenv("MYSQL_USER")
password=os.getenv("MYSQL_PASSWORD")
host=os.getenv("MYSQL_HOST")
database=os.getenv("MYSQL_DATABASE")
port=os.getenv("MYSQL_PORT")

# Connect to my sql database
engine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}"
                       .format(user=user,
                               pw=password,
                               db=database))

cnxn = engine.connect()

# Get the data for the graph by requesting sql
df_angle = pd.read_sql("SELECT steering_angle FROM Lane_Navigation_Images", cnxn) # WHERE ride_id = 1
df_lane_nav = pd.read_sql("SELECT * FROM Lane_Navigation_Models", cnxn)
df_object_detection = pd.read_sql("SELECT `person`, `red_light`, `green_light`, `30_speed_sign`, `50_speed_sign`, `stop_sign` FROM Object_Detection_Images", cnxn)
df_join_car = pd.read_sql("SELECT `steering_angle` FROM Lane_Navigation_Images INNER JOIN Cars ON Lane_Navigation_Images.ride_id = Cars.id WHERE Cars.id=1", cnxn)
df = pd.read_csv("C:/Users/utilisateur/Desktop/Voiture_Autonome/temps_frame.csv")
df_trajet = pd.concat([df_join_car, df], axis=1)
df_speed = pd.read_sql("SELECT * FROM Speed", cnxn)
 
# Get the default CSS
external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']
 
app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.title = 'SQL + Dash'
app_name = 'dash-mysqledataplot'

# Create the graphs for the top side of the dashboard
# create a simple histogram
trace = px.histogram(df_angle, x="steering_angle", labels={'steering_angle':'steering angle'}, title='Steering Angle Distribution')

# create a bar distribution for the model
model_bar = px.bar(df_lane_nav, x="model", y="mse", labels={'x':'Models', 'y':'MSE'}, title='Evaluation of Navigation Models', color="mse", color_continuous_scale=["red", "green", "navy"])

# create a plot line for trajectory of the car (90: straight, <90: left, >90: right)
traject_line = px.line(df_trajet, x="time (ms)", y="steering_angle", labels={'steering_angle': 'steering angle'}, title='Trajectory of the first Car')
traject_line.add_shape(type='line',
                x0=0,
                y0=90,
                x1=10950,
                y1=90,
                line=dict(color='Red',),
                xref='x',
                yref='y'
)

# Define the color pattern
palette = {"person": "#00008B","stop sign":"#FF8C00", "red light": "#B22222", "50 speed sign":"#4B0082", "30 speed sign":"#800080", "green light":"#008000" }

# Create the graphs for the bottom side of the dashboard
# create a bar distribution
object_detection_model = px.bar(df_object_detection, labels={'x':'Images', 'y': 'Value for each class'}, title='Count for each class')

# create a pie chart for category repartition
df_transform = df_object_detection.append(df_object_detection.sum(numeric_only=True), ignore_index=True)
traffic_signs = ['person', 'red light', 'green light', '30 speed sign', '50 speed sign', 'stop sign']
values = df_transform.iloc[-1]
object_detection_repartition = px.pie(names=traffic_signs, values=values, color=traffic_signs,  color_discrete_map=palette, title='Repartition of each class')

# create line plot to follow the speed of the car
speed_line = px.line(df_speed, x="time", y="speed", labels={'time':'time (ms)'}, title='Speed of the Car for Ride 4')

app.layout = html.Div(children=[
# Title of the page
    html.Div([
            html.H1("DeepPiCar Dashboard", style={'textAlign': 'center'})]),

# All elements from the top of the page
    html.Div([
        html.Div([
            dcc.Graph(
            id='steering-l-graph',
            figure=trace, responsive = True),
        ], className='four columns'),

        html.Div([
            dcc.Graph(
            id='steering-m-graph',
            figure=model_bar, responsive = True),
        ], className='four columns'),

        html.Div([
            dcc.Graph(
            id='steering-r-graph',
            figure=traject_line, responsive = True),
        ], className='four columns'),
    ], className='row'),

# New Div for all elements in the new 'row' of the page
    html.Div([
        html.Div([
            dcc.Graph(
            id='steering-ul-graph',
            figure=object_detection_model, responsive = True),
        ], className='four columns'),

        html.Div([
            dcc.Graph(
            id='steering-um-graph',
            figure=object_detection_repartition, responsive =True),
        ], className='four columns'),

        html.Div([
            dcc.Graph(
            id='steering-ur-graph',
            figure=speed_line, responsive =True),
        ], className='four columns'),
    ], className='row'),
])

if __name__ == '__main__':
    app.run_server(debug=True)
