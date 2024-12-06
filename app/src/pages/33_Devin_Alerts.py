import streamlit as st
import requests
import os

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Current Notifications")

if st.button("Back To Menu"):
    st.switch_page('pages/30_Devin_Home.py')

def notification_card(item, idx):
    return f"""
    <div style="
        width: 350px;
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
        <h4>{item.get('name', 'N/A')}</h4>
        <p>Threshold: {item.get('threshold_value', 'N/A')}</p>
        <p>Actual: {item.get('actual_value', 'N/A')}</p>
        <p>Timestamp: {item.get('timestamp', 'N/A')}</p>
    </div>
    """

def fetch_notifications():
    try:
        response = requests.get(f"{BASE_URL}/devin/notifications")
        if response.status_code == 200:
            return response.json()
        else:
            st.error("Failed to fetch notifications.")
            return []
    except Exception as e:
        st.error(f"An error occurred: {e}")
        return []

notifications = fetch_notifications()

if notifications:
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

    for idx, notification in enumerate(notifications):
        st.markdown(notification_card(notification, idx), unsafe_allow_html=True)
        
        if st.button(f"Dismiss {notification.get('title', 'Notification')}", key=f"dismiss-{idx}"):
            notification_id = notification["notification_id"]
            
            delete_response = requests.delete(f"{BASE_URL}/devin/dismiss/{notification_id}")
            
            if delete_response.status_code == 200:
                st.success(f"Notification '{notification.get('title', 'Notification')}' dismissed.")
            else:
                st.error(f"Failed to dismiss notification: {delete_response.status_code}")

    st.markdown("</div>", unsafe_allow_html=True)
else:
    st.info("No notifications to display.")
