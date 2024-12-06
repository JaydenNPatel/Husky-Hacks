import streamlit as st
import requests
import os
from modules.nav import SideBarLinks

# Sidebar navigation
SideBarLinks(show_home=True)

# Set BASE_URL from environment or use default
BASE_URL = os.getenv("BASE_URL", "http://web-api:4000")

# Page title
st.title("Manage Inactive Users")
st.write("View and delete inactive users as needed.")

# Fetch all users
response = requests.get(f"{BASE_URL}/users")  # Assuming the backend returns all users
if response.status_code == 200:
    users = response.json()  # Save fetched users
    inactive_users = [user for user in users if not user.get("status", True)]  # Filter inactive users
    st.session_state["inactive_users"] = inactive_users  # Store in session state for reuse
else:
    st.error("Failed to fetch users.")
    inactive_users = []

# Check if inactive users exist
if inactive_users:
    st.markdown(
        """
        <div style="
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            justify-content: center;
        ">
        """,
        unsafe_allow_html=True,
    )

    # Loop through each inactive user and create cards with delete buttons
    for idx, user in enumerate(inactive_users):
        st.markdown(
            f"""
            <div style="
                width: 300px;
                background-color: white;
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 16px;
                margin: 8px;
                box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
                color: black;
                text-align: center;
                display: inline-block;
                vertical-align: top;
            ">
                <h4>{user.get('first_name', 'Unnamed')} {user.get('last_name', 'User')}</h4>
                <p><b>Email:</b> {user.get('email', 'Unknown')}</p>
                <p><b>Role:</b> {user.get('role', 'Unknown')}</p>
                <p><b>Status:</b> Inactive</p>
            </div>
            """,
            unsafe_allow_html=True,
        )

        # Delete button for each user
        if f"delete_id-{idx}" not in st.session_state:
            st.session_state[f"delete_id-{idx}"] = user.get("user_id")

        if st.button(f"Delete {user.get('first_name', 'Unnamed')} {user.get('last_name', 'User')}", key=f"delete-{idx}"):
            user_id = st.session_state[f"delete_id-{idx}"]

            # Perform DELETE request to backend
            delete_response = requests.delete(f"{BASE_URL}/users/{user_id}")

            if delete_response.status_code == 200:
                st.success(f"Deleted user: {user.get('first_name', 'Unnamed')} {user.get('last_name', 'User')}")
                del st.session_state[f"delete_id-{idx}"]
                # Update the session state to reflect deletion
                st.session_state["inactive_users"] = [
                    u for u in st.session_state["inactive_users"] if u.get("user_id") != user_id
                ]
            else:
                st.error(f"Failed to delete the user: {delete_response.status_code}")

    st.markdown("</div>", unsafe_allow_html=True)
else:
    st.info("No inactive users found.")

# Back button to go to the home page
if st.button("Back to Home"):
    st.switch_page("pages/ProjectHome.py")