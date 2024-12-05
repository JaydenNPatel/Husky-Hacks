import streamlit as st
import requests
import os  # Import os to read environment variables

# Use BASE_URL from the environment or provide a default fallback
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("View Metrics")

if st.button("Test"):
    response = requests.get(f"{BASE_URL}/devin/metrics")

    if response.status_code == 200:
        items = response.json()  # Convert JSON response to Python dictionary/list
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")
        #st.error(f"Failed to fetch items. Status code: {response.status_code}")