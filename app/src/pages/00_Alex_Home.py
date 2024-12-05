import streamlit as st
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

# Set up Alex's home page
st.title("Welcome, Alex!")
st.write("### Choose an action to get started:")

# Navigation buttons for Alex's features
if st.button("Upload Project"):
    st.switch_page('pages/01_Alex_Upload_Project.py')  # Redirects to upload project page

if st.button("Edit Projects"):
    st.switch_page('pages/02_Alex_Edit_Projects.py')  # Redirects to upload project page

if st.button("Delete Projects"):
    st.switch_page('pages/03_Alex_Delete_Projects.py')  # Redirects to upload project page

if st.button("Back to Home"):
    st.session_state['authenticated'] = False
    st.switch_page('ProjectHome.py')  # Redirect back to the main entry-point