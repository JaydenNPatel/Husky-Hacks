import streamlit as st
import requests
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

st.title("Upload Your Project")
st.write("Use this form to upload details about your project so others can view and provide feedback.")

# Input fields for project details
project_name = st.text_input("Project Name", placeholder="Enter your project name")
description = st.text_area("Description", placeholder="Describe your project")
tags = st.text_input("Tags", placeholder="Add comma-separated tags")

# Submit button to upload the project
if st.button("Upload Project"):
    # Validate input
    if not project_name or not description:
        st.error("Please fill out all required fields!")
    else:
        # Send project data to the backend
        data = {"name": project_name, "description": description, "tags": tags}
        response = requests.post("http://127.0.0.1:5000/projects", json=data)

        # Handle the response
        if response.status_code == 201:
            st.success("Project uploaded successfully!")
        else:
            st.error("Failed to upload project. Please try again.")

# Back button to Alex's home page
if st.button("Back to Alex's Home"):
    st.switch_page('pages/00_Alex_Home.py')