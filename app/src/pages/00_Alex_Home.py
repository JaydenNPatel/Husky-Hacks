import streamlit as st

# Set up Alex's home page
st.title("Welcome, Alex!")
st.write("### Choose an action to get started:")

# Navigation buttons for Alex's features
if st.button("Upload Project"):
    st.switch_page('pages/01_Alex_Upload_Project.py')  # Redirects to upload project page

if st.button("View All Projects"):
    st.write("Feature not implemented yet.")  # Placeholder for future feature

if st.button("Back to Home"):
    st.session_state['authenticated'] = False
    st.switch_page('ProjectHome')  # Redirect back to the main entry-point