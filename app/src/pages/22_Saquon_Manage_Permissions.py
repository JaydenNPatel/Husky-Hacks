import streamlit as st
import requests
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

st.title("Manage User Permissions")
st.write("Update user roles and permissions to ensure secure access control.")

# Fetch list of users
response = requests.get("http://127.0.0.1:5000/users")
if response.status_code == 200:
    users = response.json()  # Assuming users is a list of dictionaries with 'id' and 'name'
    user_options = {user["name"]: user["id"] for user in users}
else:
    st.error("Failed to fetch users.")
    users = []
    user_options = {}

# Select a user to update
selected_user = st.selectbox("Select a user to update permissions:", list(user_options.keys()))

# Input for new role
new_role = st.text_input("New Role", placeholder="Enter the new role for the user")

# Update button
if st.button("Update Permissions"):
    if not selected_user or not new_role:
        st.error("Please select a user and enter a new role!")
    else:
        user_id = user_options[selected_user]
        data = {"role": new_role}
        response = requests.put(f"http://127.0.0.1:5000/users/{user_id}", json=data)

        # Handle response
        if response.status_code == 200:
            st.success(f"Permissions updated successfully for {selected_user}!")
        else:
            st.error(f"Failed to update permissions: {response.json().get('error', 'Unknown error')}")

# Back button
if st.button("Back to Saquon's Home"):
    st.switch_page('pages/20_Saquon_Home.py')
