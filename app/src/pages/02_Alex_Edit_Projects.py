import streamlit as st
import requests

st.title("Edit Your Project")
st.write("Select a project to update its details.")

# Simulated list of projects
response = requests.get("http://127.0.0.1:5000/projects")  # Fetch projects from backend
if response.status_code == 200:
    projects = response.json()  # Assuming the backend returns a list of projects
    project_names = [p["name"] for p in projects]
else:
    st.error("Failed to fetch projects.")
    projects = []
    project_names = []

# Select a project to edit
selected_project = st.selectbox("Choose a project to edit:", project_names)

# Input fields for editing project details
new_name = st.text_input("New Project Name", value=selected_project)
new_description = st.text_area("New Description", placeholder="Update the description")
new_tags = st.text_input("New Tags", placeholder="Add updated comma-separated tags")

# Update button
if st.button("Update Project"):
    if not new_name or not new_description:
        st.error("Please fill out all required fields!")
    else:
        # Find the selected project's ID
        project_id = next((p["id"] for p in projects if p["name"] == selected_project), None)
        if project_id:
            data = {"name": new_name, "description": new_description, "tags": new_tags}
            response = requests.put(f"http://127.0.0.1:5000/projects/{project_id}", json=data)

            # Handle response
            if response.status_code == 200:
                st.success("Project updated successfully!")
            else:
                st.error(f"Failed to update project: {response.json().get('error', 'Unknown error')}")
        else:
            st.error("Could not identify the selected project.")
            
# Back button to Alex's home page
if st.button("Back to Alex's Home"):
    st.switch_page('pages/00_Alex_Home.py')
