import streamlit as st
import requests
import os
from modules.nav import SideBarLinks

SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to "http://web-api:4000"
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

# Fetch the list of projects
def fetch_projects():
    try:
        response = requests.get(f"{BASE_URL}/projects")
        if response.status_code == 200:
            return response.json()  # Assuming backend returns a list of project objects
        else:
            st.error(f"Failed to fetch projects. HTTP {response.status_code}: {response.text}")
            return []
    except requests.exceptions.RequestException as e:
        st.error(f"An error occurred while fetching projects: {e}")
        return []

# Title and instructions
st.title("Submit Your Project for Feedback")
st.write("Use this form to submit your project and specify areas where you need feedback.")

# Fetch projects for Sally (user_id = 2)
projects = fetch_projects()
sally_projects = [project for project in projects if project.get('user_id') == 2]

if sally_projects:
    # Dropdown to select a project
    selected_project = st.selectbox(
        "Project Name:",
        options=[project['title'] for project in sally_projects]
    )

    # Fetch the full project details based on the selected title
    selected_project_details = next(
        (project for project in sally_projects if project['title'] == selected_project),
        None
    )
else:
    st.info("No projects available for Sally.")
    selected_project = None
    selected_project_details = None

# Input fields
description = st.text_area(
    "Description",
    placeholder="Describe your project and its purpose",
    value=selected_project_details["description"] if selected_project_details else ""
)
feedback_areas = st.text_area(
    "Feedback Areas",
    placeholder="Specify areas where you want feedback (e.g., code readability, functionality)",
    value=""
)

# Submit button
if st.button("Submit Feedback Request"):
    if not selected_project or not description or not feedback_areas:
        st.error("Please fill out all fields!")
    else:
        # Data to send to the backend
        data = {
            "project_id": selected_project_details["id"],
            "description": description,
            "feedback_areas": feedback_areas
        }
        response = requests.post(f"{BASE_URL}/feedback_requests", json=data)

        # Handle response
        if response.status_code == 201:
            st.success("Feedback request submitted successfully!")
        else:
            st.error(f"Failed to submit feedback request: {response.json().get('error', 'Unknown error')}")

# Back button
if st.button("Back to Sally's Home"):
    st.switch_page('pages/10_Sally_Home.py')