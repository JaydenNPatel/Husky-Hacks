import streamlit as st

st.title("Welcome, Alex!")
st.write("### Role: Developer")
st.write("Navigate through your features:")
if st.button("Upload Project"):
    st.experimental_rerun()  # Redirect to feature pages
if st.button("Request Feedback"):
    st.experimental_rerun()
if st.button("Track Progress"):
    st.experimental_rerun()
