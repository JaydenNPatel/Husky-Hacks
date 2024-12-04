import streamlit as st

st.title("Welcome, Alex!")
st.write("### Role: Developer")
st.write("Navigate through your features:")

# Feature Buttons
if st.button("Upload Project"):
    st.experimental_rerun()  # Placeholder for navigation
if st.button("Request Feedback"):
    st.experimental_rerun()  # Placeholder for navigation
if st.button("Track Progress"):
    st.experimental_rerun()  # Placeholder for navigation

# Back Button
if st.button("⬅️ Back to Home"):
    st.session_state['authenticated'] = False  # Reset session state if needed
    st.session_state['role'] = ''
    st.session_state['first_name'] = ''
    st.switch_page("Home")  # Corrected path for the Home page
