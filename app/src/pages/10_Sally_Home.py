import streamlit as st
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

# Set up Sally's home page
st.title("Welcome, Sally!")
st.write("### Choose an action to get started:")

# Navigation buttons for Sally's features
if st.button("Submit a Project for Feedback"):
    st.switch_page('pages/11_Sally_Submit_Project.py')  # Redirects to submit project page

if st.button("See Project Feedback"):
    st.switch_page('pages/12_Sally_See_Feedback.py')  # Redirects to update feedback page

if st.button("Delete a Project"):
    st.switch_page('pages/13_Sally_Delete_Project.py')  # Redirects to delete project page

if st.button("Back to Home"):
    st.session_state['authenticated'] = False
    st.switch_page('ProjectHome.py')  # Redirect back to the main entry-point
