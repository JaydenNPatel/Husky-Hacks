import streamlit as st

st.title("Welcome, Sally!")
st.write("### Role: New Coder")
st.write("Navigate through your features:")

if st.button("Upload Project"):
    st.write("Redirecting to Upload Project page...")
    st.experimental_rerun()  # Placeholder; replace with redirection logic

if st.button("Review Feedback"):
    st.write("Redirecting to Review Feedback page...")
    st.experimental_rerun()

if st.button("Track Progress"):
    st.write("Redirecting to Track Progress page...")
    st.experimental_rerun()

if st.button("Back to Home"):
    st.session_state['authenticated'] = False
    st.switch_page('ProjectHome.py') 
