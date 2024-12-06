import streamlit as st
import requests
import os
import time
from modules.nav import SideBarLinks

# Sidebar navigation
SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to "http://web-api:4000"
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

st.title("Alex's Project Management")

# Function to fetch projects
def fetch_projects():
    response = requests.get(f"{BASE_URL}/projects")
    if response.status_code == 200:
        return response.json()
    else:
        st.error("Failed to fetch projects from the server.")
        return []

# Edit a Project
st.subheader("Edit a Project")
projects = fetch_projects()
alex_projects = [project for project in projects if project['user_id'] == 1]

if alex_projects:
    selected_project = st.selectbox(
        "Choose a project to edit:",
        options=[project['title'] for project in alex_projects]
    )
    project_details = next((project for project in alex_projects if project['title'] == selected_project), None)
    if project_details:
        new_name = st.text_input("New Project Name", value=project_details["title"])
        new_description = st.text_area("New Description", value=project_details["description"] if project_details["description"] else "")
        new_tags = st.text_input("New Tags", value=project_details["tags"])
        if st.button("Update Project"):
            if not new_name or not new_description:
                st.error("Please fill out all required fields!")
            else:
                updated_data = {
                    "title": new_name,
                    "description": new_description,
                    "tags": new_tags
                }
                st.write("Sending Updated Data:", updated_data)
                response = requests.put(f"{BASE_URL}/projects/{project_details['project_id']}", json=updated_data)
                if response.status_code == 200:
                    st.success(f"Project '{new_name}' updated successfully!")
                else:
                    st.error(f"Failed to update project. Status code: {response.status_code}")
                    st.write(response.text)
    else:
        st.error("Could not retrieve details for the selected project.")
else:
    st.info("No projects found for Alex.")

if st.button("Back to Alex's Home"):
    st.write("Redirecting...")
    st.switch_page('pages/00_Alex_Home.py')
