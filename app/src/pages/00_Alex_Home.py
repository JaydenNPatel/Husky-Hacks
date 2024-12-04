import streamlit as st

st.title("Welcome, Alex!")
st.write("### Role: Developer")
st.write("Navigate through your features:")

# Feature Buttons
if st.button("Upload Project"):
    st.experimental_rerun()  # Placeholder for redirection logic
if st.button("Request Feedback"):
    st.experimental_rerun()  # Placeholder for redirection logic
if st.button("Track Progress"):
    st.experimental_rerun()  # Placeholder for redirection logic

# Back Button
if st.button("⬅️ Back to Home"):
    st.session_state['authenticated'] = False  # Reset session state if needed
    st.session_state['role'] = ''
    st.session_state['first_name'] = ''
    st.experimental_set_query_params(page="home")  # Redirect logic for home
    st.switch_page("pages/Home")  # Streamlit's multi-page navigation
