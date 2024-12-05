import streamlit as st
import requests
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

st.title("Submit Your Project for Feedback")
st.write("Use this form to submit your project and specify areas where you need feedback.")

# Input fields for project details
project_name = st.text_input("Project Name", placeholder="Enter the project name")
description = st.text_area("Description", placeholder="Describe your project and its purpose")
feedback_areas = st.text_area("Feedback Areas", placeholder="Specify areas where you want feedback (e.g., code readability, functionality)")

# Submit button
if st.button("Submit Project"):
    if not project_name or not description or not feedback_areas:
        st.error("Please fill out all fields!")
    else:
        # Data to send to backend
        data = {"name": project_name, "description": description, "feedback_areas": feedback_areas}
        response = requests.post("http://127.0.0.1:5000/projects", json=data)

        # Handle response
        if response.status_code == 201:
            st.success("Project submitted successfully!")
        else:
            st.error(f"Failed to submit project: {response.json().get('error', 'Unknown error')}")

# Back button
if st.button("Back to Sally's Home"):
    st.switch_page('pages/10_Sally_Home.py')
