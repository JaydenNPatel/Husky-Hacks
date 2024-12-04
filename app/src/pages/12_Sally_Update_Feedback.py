import streamlit as st
import requests

st.title("Update Feedback Requests")
st.write("Select a project and update the feedback areas.")

# Fetch list of projects
response = requests.get("http://127.0.0.1:5000/projects")  # Fetch projects from backend
if response.status_code == 200:
    projects = response.json()  # Assuming backend returns a list of projects
    project_names = [p["name"] for p in projects]
else:
    st.error("Failed to fetch projects.")
    projects = []
    project_names = []

# Select a project to update
selected_project = st.selectbox("Choose a project to update:", project_names)

# Input for updated feedback areas
updated_feedback_areas = st.text_area("Updated Feedback Areas", placeholder="Enter updated areas for feedback")

# Update button
if st.button("Update Feedback Areas"):
    if not updated_feedback_areas:
        st.error("Please enter updated feedback areas!")
    else:
        # Find the selected project's ID
        project_id = next((p["id"] for p in projects if p["name"] == selected_project), None)
        if project_id:
            data = {"feedback_areas": updated_feedback_areas}
            response = requests.put(f"http://127.0.0.1:5000/projects/{project_id}", json=data)

            # Handle response
            if response.status_code == 200:
                st.success("Feedback areas updated successfully!")
            else:
                st.error(f"Failed to update feedback areas: {response.json().get('error', 'Unknown error')}")
        else:
            st.error("Could not identify the selected project.")

# Back button
if st.button("Back to Sally's Home"):
    st.switch_page('pages/10_Sally_Home.py')
