import streamlit as st
import requests
import os
import time

# Use BASE_URL from environment or default to "http://web-api:4000"
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

st.title("Manage User Details")

# Function to fetch users
def fetch_users():
    try:
        response = requests.get(f"{BASE_URL}/users")
        if response.status_code == 200:
            return response.json()
        else:
            st.error(f"Failed to fetch users. HTTP {response.status_code}: {response.text}")
            return []
    except requests.exceptions.RequestException as e:
        st.error(f"An error occurred while connecting to the server: {e}")
        return []

# Edit a User
st.subheader("Edit a User")

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
        new_first_name = st.text_input("First Name", value=user_details["first_name"])
        new_last_name = st.text_input("Last Name", value=user_details["last_name"])
        new_email = st.text_input("Email", value=user_details["email"])
        new_role = st.text_input("Role", value=user_details["role"])
        new_status = st.selectbox("Status", ["Active", "Inactive"], index=0 if user_details["status"] else 1)

        # Update button
        if st.button("Update User"):
            if not new_first_name or not new_last_name or not new_email or not new_role:
                st.error("Please fill out all required fields!")
            else:
                updated_data = {
                    "first_name": new_first_name,
                    "last_name": new_last_name,
                    "email": new_email,
                    "role": new_role,
                    "status": new_status == "Active"  # Convert to boolean
                }

                # Debugging: Log the data being sent
                st.write("Sending Updated Data:", updated_data)

                # Send the PUT request
                try:
                    response = requests.put(f"{BASE_URL}/users/{user_details['user_id']}", json=updated_data)
                    if response.status_code == 200:
                        st.success(f"User '{new_first_name} {new_last_name}' updated successfully!")
                    else:
                        st.error(f"Failed to update user. HTTP {response.status_code}: {response.text}")
                        st.write(response.text)  # Log server response for debugging
                except requests.exceptions.RequestException as e:
                    st.error(f"An error occurred while updating the user: {e}")
    else:
        st.error("Could not retrieve details for the selected user.")
else:
    st.info("No users found.")

# Back to Home Button
if st.button("Back to Home"):
    st.write("Redirecting...")
    st.switch_page('pages/00_Home.py')