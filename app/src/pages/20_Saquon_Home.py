import streamlit as st

# Set up Saquon's home page
st.title("Welcome, Saquon!")
st.write("### Choose an action to get started:")

# Navigation buttons for Saquon's features
if st.button("View System Logs"):
    st.switch_page('pages/21_Saquon_View_Logs.py')  # Redirects to view logs page

if st.button("Manage User Permissions"):
    st.switch_page('pages/22_Saquon_Manage_Permissions.py')  # Redirects to manage permissions page

if st.button("Delete Inactive Users"):
    st.switch_page('pages/23_Saquon_Delete_Inactive_Users.py')  # Redirects to delete users page

if st.button("Back to Home"):
    st.session_state['authenticated'] = False
    st.switch_page('ProjectHome.py')  # Redirect back to the main entry-point
