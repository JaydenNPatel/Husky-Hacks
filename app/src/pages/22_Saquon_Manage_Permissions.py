import streamlit as st
import requests
import os  # Ensure os is imported
from modules.nav import SideBarLinks

SideBarLinks(show_home=True)

# Use BASE_URL from environment or default to "http://web-api:4000"
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

st.title("Manage User Permissions")

# Function to fetch users
def fetch_users():
    response = requests.get(f"{BASE_URL}/users")
    if response.status_code == 200:
        return response.json()
    else:
        st.error("Failed to fetch users from the server.")
        return []

# Edit User
st.subheader("Edit User Permissions")

# Fetch all users
users = fetch_users()

if users:
    # Allow user to select a user to edit
    selected_user = st.selectbox(
        "Choose a user to edit:",
        options=[f"{user['first_name']} {user['last_name']} ({user['email']})" for user in users]
    )

    # Get details of the selected user
    user_details = next((user for user in users if f"{user['first_name']} {user['last_name']} ({user['email']})" == selected_user), None)

    if user_details:
        # Prepopulate input fields with current user details
        new_role = st.text_input("New Role", value=user_details["role"])
        new_status = st.selectbox("Status", options=["Active", "Inactive"], index=0 if user_details["status"] else 1)

        # Update button
        if st.button("Update User"):
            if not new_role:
                st.error("Please enter a valid role!")
            else:
                updated_data = {
                    "role": new_role,
                    "status": True if new_status == "Active" else False
                }

                # Send the update request
                response = requests.put(f"{BASE_URL}/users/{user_details['user_id']}", json=updated_data)

                if response.status_code == 200:
                    st.success(f"User '{user_details['first_name']} {user_details['last_name']}' updated successfully!")
                else:
                    st.error(f"Failed to update user. Status code: {response.status_code}")
    else:
        st.error("Could not retrieve details for the selected user.")
else:
    st.info("No users found.")

# Back to Home Button
if st.button("Back to Saquon's Home"):
    st.write("Redirecting...")
    st.switch_page('pages/20_Saquon_Home.py')