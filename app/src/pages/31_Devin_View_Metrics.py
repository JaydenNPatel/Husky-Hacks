import streamlit as st
import requests
import os  # Import os to read environment variables
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

# Use BASE_URL from the environment or provide a default fallback
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Retention Metrics")

if st.button("Retention Metrics"):
    response = requests.get(f"{BASE_URL}/devin/retention_metrics")

    if response.status_code == 200:
        items = response.json()  # Convert JSON response to Python dictionary/list
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")
        #st.error(f"Failed to fetch items. Status code: {response.status_code}")

if st.button("Revenue Metrics"):
    response = requests.get(f"{BASE_URL}/devin/revenue_metrics")

    if response.status_code == 200:
        items = response.json()  # Convert JSON response to Python dictionary/list
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")
        #st.error(f"Failed to fetch items. Status code: {response.status_code}")

if st.button("User Engagement Metrics"):
    response = requests.get(f"{BASE_URL}/devin/user_engagement_metrics")

    if response.status_code == 200:
        items = response.json()  # Convert JSON response to Python dictionary/list
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")
        #st.error(f"Failed to fetch items. Status code: {response.status_code}")
