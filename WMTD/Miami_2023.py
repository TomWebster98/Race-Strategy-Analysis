from dash import Dash, html, dash_table, dcc
import pandas as pd
import plotly.express as px
import plotly.graph_objs as go
import dash_bootstrap_components as dbc

# Load lap time data into a Pandas DataFrame
df = pd.read_csv('Laptime CSV Data/2023 Season/MiamiGP/2023 MiamiGP LapTimes.csv')

# Initialize the app
app = Dash(__name__, external_stylesheets=[dbc.themes.LUX])

# Create box traces for Max Verstappen
max_laptimes = df['Laptime (s) MV'].dropna()  # Remove any NaN values
max_trace = go.Box(
    x=max_laptimes,  # Set lap times as x-axis values
    y=['Verstappen'] * len(max_laptimes),  # Set driver name as y-axis values
    name='Max Verstappen',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='orange',
)

# Create box traces for Sergio Perez
sergio_laptimes = df['Laptime (s) SP'].dropna()  # Remove any NaN values
sergio_trace = go.Box(
    x=sergio_laptimes,  # Set lap times as x-axis values
    y=['Perez'] * len(sergio_laptimes),  # Set driver name as y-axis values
    name='Sergio Perez',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='darkgreen',
)

# Creating box traces for Hard and Medium stint of Max Verstappen
max_hards = df['Laptime (s) MV'].iloc[1:45].dropna()
max_hards_trace = go.Box(
    x=max_hards,  # Set lap times as x-axis values
    y=['Verstappen'] * len(max_hards),  # Set driver name as y-axis values
    name='Max Verstappen',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='orange',
)
max_mediums = df['Laptime (s) MV'].iloc[46:57].dropna()
max_mediums_trace = go.Box(
    x=max_mediums,  # Set lap times as x-axis values
    y=['Verstappen'] * len(max_mediums),  # Set driver name as y-axis values
    name='Max Verstappen',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='orange',
)

# Creating box traces for Hard and Medium stint of Sergio Perez 
sergio_hards = df['Laptime (s) SP'].iloc[21:57].dropna()
sergio_hards_trace = go.Box(
    x=sergio_hards,  # Set lap times as x-axis values
    y=['Perez'] * len(sergio_hards),  # Set driver name as y-axis values
    name='Sergio Perez',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='darkgreen',
)
sergio_mediums = df['Laptime (s) SP'].iloc[1:20].dropna()
sergio_mediums_trace = go.Box(
    x=sergio_mediums,  # Set lap times as x-axis values
    y=['Perez'] * len(sergio_mediums),  # Set driver name as y-axis values
    name='Sergio Perez',
    orientation='h',  # Set orientation to horizontal
    boxpoints='all',
    jitter=0.3,
    pointpos=-1.8,
    marker_color='darkgreen',
)

# Create line trace for time delta between Max and Sergio
delta_trace_line = go.Scatter(
    x=df['Lap'],
    y=df['Delta (s)'],
    mode='lines',
    name='Time Delta (Line)',
    line=dict(color='lightblue'),
)

# Create line graph for lap times comparison
lap_times_trace_max = go.Scatter(
    x=df['Lap'],
    y=df['Laptime (s) MV'],
    mode='lines',
    name='Max Verstappen',
    line=dict(color='orange')
)

lap_times_trace_sergio = go.Scatter(
    x=df['Lap'],
    y=df['Laptime (s) SP'],
    mode='lines',
    name='Sergio Perez',
    line=dict(color='darkgreen')
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
                        title='Full Race Lap Time Comparison',
                        xaxis=dict(title='Lap Time (s)', gridcolor='white'),
                        yaxis=dict(title='Driver', gridcolor='white', showgrid=False),
                        boxmode='group',
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
                id='hards-lap-time-boxplot',
                figure={
                    'data': [max_hards_trace, sergio_hards_trace],
                    'layout': go.Layout(
                        title='Hard Tyre Lap Time Comparison',
                        xaxis=dict(title='Lap Time (s)', gridcolor='white'),
                        yaxis=dict(title='Driver', gridcolor='white', showgrid=False),
                        boxmode='group',
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
                id='mediums-lap-time-boxplot',
                figure={
                    'data': [max_mediums_trace, sergio_mediums_trace],
                    'layout': go.Layout(
                        title='Medium Tyre Lap Time Comparison',
                        xaxis=dict(title='Lap Time (s)', gridcolor='white'),
                        yaxis=dict(title='Driver', gridcolor='white', showgrid=False),
                        boxmode='group',
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
                        title='Time Delta (Perez to Verstappen)',
                        yaxis=dict(title='Time Delta (s)', gridcolor='white', zeroline=True, zerolinewidth=2, zerolinecolor='darkred'),
                        xaxis=dict(title='Lap Number', gridcolor='white', showspikes=True, # Show spike line for X-axis
                            # Format spike
                            spikethickness=2,
                            spikedash="dot",
                            spikecolor="#999999",
                            spikemode="across"),
                        showlegend=True,
                        paper_bgcolor=styles['background'],
                        plot_bgcolor=styles['background'],
                        font=dict(color=styles['text-color']),
                        hovermode="x",
                        hoverdistance=100, # Distance to show hover label of data point
                        spikedistance=1000, # Distance to show spike
                    )
                }
            )
        ]),

        html.Div([
            dcc.Graph(
                id='lap-times-line',
                figure={
                    'data': [lap_times_trace_max, lap_times_trace_sergio],
                    'layout': go.Layout(
                        title='Lap Times Comparison',
                        xaxis=dict(title='Lap Number', gridcolor='white', showspikes=True, # Show spike line for X-axis
                            # Format spike
                            spikethickness=2,
                            spikedash="dot",
                            spikecolor="#999999",
                            spikemode="across"),
                        yaxis=dict(title='Lap Time (s)', gridcolor='white'),
                        showlegend=True,
                        paper_bgcolor=styles['background'],
                        plot_bgcolor=styles['background'],
                        font=dict(color=styles['text-color']),
                        hovermode="x",
                        hoverdistance=100, # Distance to show hover label of data point
                        spikedistance=1000) # Distance to show spike
                }
            )
        ]),
    ]
)

if __name__ == '__main__':
    app.run_server(debug=True)
