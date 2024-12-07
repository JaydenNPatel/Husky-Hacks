import streamlit as st
import requests
import os
from modules.nav import SideBarLinks

# Sidebar navigation
SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to "http://web-api:4000"
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

# Page Title
st.title("Feedback Manager")

# Function to fetch feedback and feedback requests for a specific project
def fetch_feedback_and_requests(project_id):
    try:
        response = requests.get(f"{BASE_URL}/feedback/project/{project_id}")
        if response.status_code == 200:
            return response.json()
        else:
            st.error(f"Failed to fetch feedback for project ID {project_id}.")
            return []
    except requests.exceptions.RequestException as e:
        st.error(f"Error connecting to server: {e}")
        return []

# Function to fetch all feedback requests
def fetch_feedback_requests():
    try:
        response = requests.get(f"{BASE_URL}/feedback_requests")
        if response.status_code == 200:
            return response.json()
        else:
            st.error("Failed to fetch feedback requests from the server.")
            return []
    except requests.exceptions.RequestException as e:
        st.error(f"Error connecting to server: {e}")
        return []

# Fetch all feedback requests
feedback_requests = fetch_feedback_requests()

# Assuming Sally's user_id is 2
sally_feedback_requests = [
    request for request in feedback_requests if request['requester_id'] == 2
]

if sally_feedback_requests:
    # Dropdown to select a project
    st.subheader("View Feedback and Requests for a Project")
    selected_project_id = st.selectbox(
        "Choose a project to view feedback and requests:",
        options=list(set(request['project_id'] for request in sally_feedback_requests)),
        format_func=lambda x: f"Project ID: {x}"  # Optionally format the project IDs
    )
    
    if selected_project_id:
        # Fetch and display feedback and requests for the selected project
        feedback_data = fetch_feedback_and_requests(selected_project_id)
        
        # Display feedback requests
        st.write(f"### Feedback Requests for Project ID: {selected_project_id}")
        # Display feedback
        st.write(f"### Feedback for Project ID: {selected_project_id}")
        for feedback in feedback_data:
            st.markdown(f"- **Reviewer:** {feedback.get('reviewer_name', 'Anonymous')} | **Rating:** {feedback.get('rating', 'No Rating')}")
            st.markdown(f"  {feedback['feedback_text']}")
else:
    st.info("No feedback requests found for Sally.")

# Navigation Button
if st.button("Back to Sally's Home"):
    st.switch_page('pages/10_Sally_Home.py')