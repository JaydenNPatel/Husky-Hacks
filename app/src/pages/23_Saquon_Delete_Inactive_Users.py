import streamlit as st
import requests

st.title("Delete Inactive Users")
st.write("Identify and delete inactive user accounts to improve system efficiency.")

# Fetch list of inactive users
response = requests.get("http://127.0.0.1:5000/users?status=inactive")
if response.status_code == 200:
    inactive_users = response.json()  # Assuming a list of dictionaries with 'id' and 'name'
    user_options = {user["name"]: user["id"] for user in inactive_users}
else:
    st.error("Failed to fetch inactive users.")
    inactive_users = []
    user_options = {}

# Select a user to delete
selected_user = st.selectbox("Select an inactive user to delete:", list(user_options.keys()))

# Delete button
if st.button("Delete User"):
    if not selected_user:
        st.error("Please select a user to delete!")
    else:
        user_id = user_options[selected_user]
        response = requests.delete(f"http://127.0.0.1:5000/users/{user_id}")

        # Handle response
        if response.status_code == 200:
            st.success(f"User '{selected_user}' deleted successfully!")
        else:
            st.error(f"Failed to delete user: {response.json().get('error', 'Unknown error')}")

# Back button
if st.button("Back to Saquon's Home"):
    st.switch_page('pages/20_Saquon_Home.py')
