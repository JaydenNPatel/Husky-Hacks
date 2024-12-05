import logging
import streamlit as st
from modules.nav import SideBarLinks

# Set page configuration
st.set_page_config(layout='wide')

# Reset session state
st.session_state['authenticated'] = False

# Display sidebar links
SideBarLinks(show_home=True)

# ***************************************************
#    The major content of this page
# ***************************************************

# Set the background to black using markdown, and no CSS
st.markdown("""
    <style>
        body {
            background-color: black;
        }
    </style>
""", unsafe_allow_html=True)

# Logging setup
logging.basicConfig(format='%(filename)s:%(lineno)s:%(levelname)s -- %(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

logger.info("Loading the Home page")
st.title('Husky Hacks')
st.write('\n\n')
st.write('### HI! As which user would you like to log in?')

# Button styling (dark red) with light hover effect
button_style = """
    <style>
        .stButton > button {
            background-color: darkred;
            color: white;
            border: 2px solid darkred;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .stButton > button:hover {
            background-color: lightcoral;
        }
    </style>
"""
st.markdown(button_style, unsafe_allow_html=True)

# Login buttons for each persona
if st.button("Login as Alex (Developer)", type='primary', use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'Developer'
    st.session_state['first_name'] = 'Alex'
    logger.info("Logging in as Alex - Persona 1")
    st.switch_page('pages/00_Alex_Home.py')  # Redirects to Alex's home page

if st.button("Login as Sally (New Coder)", type='primary', use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'New Coder'
    st.session_state['first_name'] = 'Sally'
    logger.info("Logging in as Sally - Persona 2")
    st.switch_page('pages/10_Sally_Home.py')

if st.button("Login as Saquon (System Administrator)", type='primary', use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'System Administrator'
    st.session_state['first_name'] = 'Saquon'
    logger.info("Logging in as Saquon - Persona 3")
    st.switch_page('pages/20_Saquon_Home.py')

if st.button("Login as Devin (Data Analyst)", type='primary', use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'Data Analyst'
    st.session_state['first_name'] = 'Devin'
    logger.info("Logging in as Devin - Persona 4")
    st.switch_page('pages/30_Devin_Home.py')
