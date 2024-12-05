import streamlit as st

import requests

import os

import time

 

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

 

# Fetch all projects

projects = fetch_projects()

alex_projects = [project for project in projects if project['user_id'] == 1]

 

if alex_projects:

    # Allow user to select a project to edit

    selected_project = st.selectbox(

        "Choose a project to edit:",

        options=[project['title'] for project in alex_projects]

    )

 

    # Get details of the selected project

    project_details = next((project for project in alex_projects if project['title'] == selected_project), None)

 

    if project_details:

        # Prepopulate input fields with current project details

        new_name = st.text_input("New Project Name", value=project_details["title"])

        new_description = st.text_area("New Description", value=project_details["description"])

        new_tags = st.text_input("New Tags", value=", ".join(project_details["tags"]))

 

        # Update button

        if st.button("Update Project"):

            if not new_name or not new_description:

                st.error("Please fill out all required fields!")

            else:

                updated_data = {

                    "title": new_name,

                    "description": new_description,

                    "tags": [tag.strip() for tag in new_tags.split(",")]

                }

 

                # Send the update request

                response = requests.put(f"{BASE_URL}/projects/{project_details['project_id']}", json=updated_data)

 

                if response.status_code == 200:

                    st.success(f"Project '{new_name}' updated successfully!")

                else:

                    st.error(f"Failed to update project. Status code: {response.status_code}")

    else:

        st.error("Could not retrieve details for the selected project.")

else:

    st.info("No projects found for Alex.")

 

# Back to Home Button

if st.button("Back to Alex's Home"):

    st.write("Redirecting...")

    st.switch_page('pages/00_Alex_Home.py')