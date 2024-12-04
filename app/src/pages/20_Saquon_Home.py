import streamlit as st

st.title("Welcome, Saquon!")
st.write("### Role: System Administrator")
st.write("Navigate through your features:")

if st.button("View System Logs"):
    st.write("Redirecting to View System Logs page...")
    st.experimental_rerun()  # Placeholder; replace with redirection logic

if st.button("Manage Backups"):
    st.write("Redirecting to Manage Backups page...")
    st.experimental_rerun()

if st.button("Manage Permissions"):
    st.write("Redirecting to Manage Permissions page...")
    st.experimental_rerun()
