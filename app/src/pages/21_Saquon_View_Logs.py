import streamlit as st
import requests
from modules.nav import SideBarLinks
import os

# Sidebar links
SideBarLinks(show_home=True)

# Set page title and description
st.title("View System Logs")
st.write("Monitor platform activity and identify potential issues through real-time system logs.")

# Use BASE_URL from environment or default
BASE_URL = os.getenv("BASE_URL", "http://127.0.0.1:5000")

# Fetch system logs
response = requests.get(f"{BASE_URL}/system_logs")  # Backend route for system logs
if response.status_code == 200:
    logs = response.json()  # Assuming logs are returned as a list of dictionaries
    if logs:
        st.write("### System Logs:")
        for log in logs:
            st.markdown(
                f"""
                <div style="
                    background-color: #f9f9f9;
                    border: 1px solid #ddd;
                    border-radius: 5px;
                    padding: 10px;
                    margin-bottom: 10px;
                    color: black;
                ">
                    <b>Timestamp:</b> {log['timestamp']}<br>
                    <b>User ID:</b> {log['user_id']}<br>
                    <b>Event Type:</b> {log['event_type']}<br>
                    <b>Description:</b> {log['description']}
                </div>
                """,
                unsafe_allow_html=True
            )
    else:
        st.info("No system logs available at the moment.")
else:
    st.error("Failed to fetch system logs.")

# Back button
if st.button("Back to Saquon's Home"):
    st.switch_page('pages/20_Saquon_Home.py')
