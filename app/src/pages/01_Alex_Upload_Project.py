import streamlit as st
import requests
import os
import time
from modules.nav import SideBarLinks

# Sidebar navigation
SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to http://web-api:4000
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

st.title("Alex's Project Management")

# Function to render a project card
def project_card(project, idx):
    card_style = f"""
    <div style="
        width: 300px;
        background-color: #333333;
        color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 16px;
        margin: 8px;
        box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        text-align: center;
        display: inline-block;
        vertical-align: top;
    ">
        <h4>{project['title']}</h4>
        <h6>Tags: {project['tags']}</h6>
        <p>Description: {project['description']}</p>
        <p>User ID: {project['user_id']}</p>
        <p>Uploaded: {project['upload_date']}</p>
    </div>
    """
    return card_style



# View Projects
if st.button("View Projects"):
    response = requests.get(f"{BASE_URL}/alex/projects")

    if response.status_code == 200:
        projects = response.json()  # Assuming backend returns all projects

        # Filter projects specific to Alex (replace user_id with Alex's actual ID)
        alex_projects = [project for project in projects if project['user_id'] == 1]

        if alex_projects:
            st.markdown(
                """
                <div style="
                    display: flex;
                    flex-wrap: wrap;
                    background-color: #333333;
                    color: white;
                    gap: 16px;
                    justify-content: flex-start;
                ">
                """,
                unsafe_allow_html=True
            )

            for idx, project in enumerate(alex_projects):
                st.markdown(project_card(project, idx), unsafe_allow_html=True)

                # Add delete functionality for each project
                if f"delete_id-{idx}" not in st.session_state:
                    st.session_state[f"delete_id-{idx}"] = project['project_id']

                if st.button(f"Delete {project['title']}", key=f"delete-{idx}"):
                    project_id = st.session_state[f"delete_id-{idx}"]

                    delete_response = requests.delete(f"{BASE_URL}/alex/projects/{project_id}")
                    time.sleep(2)

                    if delete_response.status_code == 200:
                        st.success(f"Deleted project: {project['title']}")
                        del st.session_state[f"delete_id-{idx}"]
                    else:
                        st.error(f"Failed to delete the project: {delete_response.status_code}")

            st.markdown("</div>", unsafe_allow_html=True)
        else:
            st.info("No projects found for Alex.")
    else:
        st.error("Failed to fetch projects.")
# Add a New Project

st.subheader("Add a New Project")

project_name = st.text_input("Project Name", placeholder="Enter your project name")

description = st.text_area("Description", placeholder="Describe your project")

tags = st.text_input("Tags", placeholder="Add comma-separated tags")

user_id = 1  # Set Alex's user_id explicitly

 

if st.button("Upload Project"):

    if not project_name or not description:

        st.error("Please fill out all required fields!")

    else:

        project_data = {

            "title": project_name,

            "description": description,

            "tags": tags,

            "user_id": user_id

        }

        response = requests.post(f"{BASE_URL}/alex/projects", json=project_data)

 

        if response.status_code == 201:

            st.success("Project uploaded successfully!")

        else:

            st.error(f"Failed to upload project. Status code: {response.status_code}")

 

# Back to Home Button

if st.button("Back to Alex's Home"):
    st.write("Redirecting...")
    st.switch_page('pages/00_Alex_Home.py')