##################################################
# Main/entry-point file
##################################################

import logging
logging.basicConfig(format='%(filename)s:%(lineno)s:%(levelname)s -- %(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks

st.set_page_config(layout = 'wide')

st.session_state['authenticated'] = False

SideBarLinks(show_home=True)

# ***************************************************
#    The major content of this page
# ***************************************************

logger.info("Loading the Home page")
st.title('CS 3200 Project App')
st.write('\n\n')
st.write('### HI! As which user would you like to log in?')

if st.button("Login as Alex", 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'Student'
    st.session_state['first_name'] = 'Alex'
    logger.info("Logging in as Alex - Persona 1")
    st.switch_page('pages/00_Pol_Strat_Home.py')

if st.button('Login as Sally', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'Student'
    st.session_state['first_name'] = 'Sally'
    logger.info("Logging in as Sally - Persona 2")
    st.switch_page('pages/10_USAID_Worker_Home.py')

if st.button('Login as Saquon', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'System Administrator'
    st.session_state['first_name'] = 'Saquon'
    logger.info("Logging in as Saquon - Persona 3")
    st.switch_page('pages/20_Admin_Home.py')

if st.button('Login as Devin', 
            type = 'primary', 
            use_container_width=True):
    st.session_state['authenticated'] = True
    st.session_state['role'] = 'Data Analyst'
    st.session_state['first_name'] = 'Devin'
    logger.info("Logging in as Devin - Persona 4")
    st.switch_page('pages/20_Admin_Home.py')

