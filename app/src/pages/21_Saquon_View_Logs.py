import streamlit as st
import requests
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

st.title("View System Logs")
st.write("View real-time system logs to monitor platform activity and identify potential issues.")

# Fetch system logs
response = requests.get("http://127.0.0.1:5000/system_logs")  # Backend route
if response.status_code == 200:
    logs = response.json()  # Assuming logs are returned as a list of strings
    st.write("### System Logs:")
    for log in logs:
        st.write(f"- {log}")
else:
    st.error("Failed to fetch system logs.")

# Back button
if st.button("Back to Saquon's Home"):
    st.switch_page('pages/20_Saquon_Home.py')
