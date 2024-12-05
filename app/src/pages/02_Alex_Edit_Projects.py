import streamlit as st
import requests
import os
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to http://web-api:4000
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

st.title("Alex's Project Management")
def fetch_projects():
    response = requests.get(f"{BASE_URL}/projects")
    if response.status_code == 200:
        return response.json()
    else:
        st.error("Failed to fetch projects from the server.")
        return []

# Edit Project
st.subheader("Edit a Project")
projects = fetch_projects()
project_names = [p["title"] for p in projects if p['user_id'] == 1]
selected_project = st.selectbox("Choose a project to edit:", project_names)

if selected_project:
    project_details = next((p for p in projects if p["title"] == selected_project), None)
    new_name = st.text_input("New Project Name", value=project_details["title"] if project_details else "")
    new_description = st.text_area("New Description", value=project_details["description"] if project_details else "")
    new_tags = st.text_input("New Tags", value=", ".join(project_details["tags"]) if project_details else "")
    if st.button("Update Project"):
        if not new_name or not new_description:
            st.error("Please fill out all required fields!")
        else:
            project_id = project_details["project_id"]
            updated_data = {
                "title": new_name,
                "description": new_description,
                "tags": [tag.strip() for tag in new_tags.split(",")]
            }
            response = requests.put(f"{BASE_URL}/projects/{project_id}", json=updated_data)
            if response.status_code == 200:
                st.success(f"Project '{new_name}' updated successfully!")
            else:
                st.error(f"Failed to update project. Status code: {response.status_code}")

if st.button("Back to Alex's Home"):
    st.write("Redirecting...")
    st.switch_page('pages/00_Alex_Home.py')