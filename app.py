from dash import Dash, html, dash_table, dcc
import pandas as pd
import plotly.express as px
import plotly.graph_objs as go

# Load lap time data into a Pandas DataFrame
df = pd.read_csv('Laptime CSV Data/2023 MiamiGP LapTimes.csv')

# Initialize the app
app = Dash(__name__)

# Create box traces for Max Verstappen
max_laptimes = df['Laptime (s) MV'].dropna()  # Remove any NaN values
max_trace = go.Box(
    y=max_laptimes,
    name='Max Verstappen',
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
)

# Create box traces for Sergio Perez
sergio_laptimes = df['Laptime (s) SP'].dropna()  # Remove any NaN values
sergio_trace = go.Box(
    y=sergio_laptimes,
    name='Sergio Perez',
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
)

# Create line trace for time delta between Max and Sergio
delta_trace_line = go.Scatter(
    x=df.index,
    y=df['Delta (s)'],
    mode='lines',
    name='Time Delta (Line)',
    line=dict(color='red')
)

# Create area trace for time delta between Max and Sergio
delta_trace_area = go.Scatter(
    x=df.index,
    y=df['Delta (s)'],
    mode='lines',
    fill='tozeroy',
    fillcolor='rgba(255, 0, 0, 0.2)',
    name='Time Delta (Area)',
    line=dict(color='rgba(255, 0, 0, 0)')
)

# Define custom CSS styles for the app
styles = {
    'background': '#333333',  # Set background color to dark grey
    'text-color': '#FFFFFF',  # Set text color to white
    'title': {
        'textAlign': 'center',
        'color': '#FFFFFF',
        'fontSize': '36px',
        'padding': '20px'
    }
}

app.layout = html.Div(
    className='app-container',
    style={
        'backgroundColor': styles['background'],
        'border': 'none',
        'padding': '0px',
        'margin': '0px',
        'outline': 'none'
    },
    children=[
        html.H1(
            children='Formula 1 Race Analysis',
            style=styles['title']
        ),

        html.Div([
            dcc.Graph(
                id='lap-time-boxplot',
                figure={
                    'data': [max_trace, sergio_trace],
                    'layout': go.Layout(
                        title='Lap Time Comparison',
                        yaxis=dict(title='Lap Time (s)', gridcolor='white'),
                        boxmode='group',
                        xaxis=dict(title='Drivers', gridcolor='white'),
                        showlegend=True,
                        paper_bgcolor=styles['background'],
                        plot_bgcolor=styles['background'],
                        font=dict(color=styles['text-color'])
                    )
                }
            )
        ]),

        html.Div([
            dcc.Graph(
                id='time-delta-line',
                figure={
                    'data': [delta_trace_line],
                    'layout': go.Layout(
                        title='Time Delta (Line Plot)',
                        yaxis=dict(title='Time Delta (s)', gridcolor='white'),
                        xaxis=dict(title='Lap Number', gridcolor='white'),
                        showlegend=True,
                        paper_bgcolor=styles['background'],
                        plot_bgcolor=styles['background'],
                        font=dict(color=styles['text-color'])
                    )
                }
            )
        ]),

        html.Div([
            dcc.Graph(
                id='time-delta-area',
                figure={
                    'data': [delta_trace_area],
                    'layout': go.Layout(
                        title='Time Delta (Area Plot)',
                        yaxis=dict(title='Time Delta (s)', gridcolor='white'),
                        xaxis=dict(title='Lap Number', gridcolor='white'),
                        showlegend=True,
                        paper_bgcolor=styles['background'],
                        plot_bgcolor=styles['background'],
                        font=dict(color=styles['text-color'])
                    )
                }
            )
        ])
    ]
)

if __name__ == '__main__':
    app.run_server(debug=True)