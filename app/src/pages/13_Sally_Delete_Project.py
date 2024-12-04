import streamlit as st
import requests

st.title("Delete a Project")
st.write("Select a project to delete it from your account.")

# Fetch list of projects
response = requests.get("http://127.0.0.1:5000/projects")  # Fetch projects from backend
if response.status_code == 200:
    projects = response.json()  # Assuming backend returns a list of projects
    project_names = [p["name"] for p in projects]
else:
    st.error("Failed to fetch projects.")
    projects = []
    project_names = []

# Select a project to delete
selected_project = st.selectbox("Choose a project to delete:", project_names)

# Delete button
if st.button("Delete Project"):
    # Find the selected project's ID
    project_id = next((p["id"] for p in projects if p["name"] == selected_project), None)
    if project_id:
        response = requests.delete(f"http://127.0.0.1:5000/projects/{project_id}")

        # Handle response
        if response.status_code == 200:
            st.success(f"Project '{selected_project}' deleted successfully!")
        else:
            st.error(f"Failed to delete project: {response.json().get('error', 'Unknown error')}")
    else:
        st.error("Could not identify the selected project.")

# Back button
if st.button("Back to Sally's Home"):
    st.switch_page('pages/10_Sally_Home.py')
