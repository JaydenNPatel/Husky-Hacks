import streamlit as st
import requests
import os
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Metrics Dashboard")

def retention_card(item, idx):
    return f"""
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
        <h4>{item['source_name']}</h4>
        <h6>{item['data_type']}</h6>
        <p>Churn Rate: {item.get('churn_rate', 'N/A')}</p>
        <p>Retention Rate: {item.get('retention_rate', 'N/A')}</p>
        <p>Cohort: {item.get('cohort', 'N/A')}</p>
        <p>Timestamp: {item.get('timestamp', 'N/A')}</p>
    </div>
    """

def revenue_card(item, idx):
    return f"""
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
        <h4>{item['source_name']}</h4>
        <h6>{item['data_type']}</h6>
        <p>Revenue: {item.get('revenue', 'N/A')}</p>
        <p>Avg Rev Per User: {item.get('avg_revenue_per_user', 'N/A')}</p>
        <p>Transactions: {item.get('transactions', 'N/A')}</p>
        <p>Currecny: {item.get('currency', 'N/A')}</p>
        <p>Timestamp: {item.get('timestamp', 'N/A')}</p>
    </div>
    """

def engagement_card(item, idx):
    return f"""
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
        <h4>{item['source_name']}</h4>
        <h6>{item['data_type']}</h6>
        <p>Engagement Rate: {item.get('engagement_rate', 'N/A')}</p>
        <p>Active Users: {item.get('active_users', 'N/A')}</p>
        <p>New Users: {item.get('new_users', 'N/A')}</p>
        <p>Returning Users: {item.get('returning_users', 'N/A')}</p>
        <p>Timestamp: {item.get('timestamp', 'N/A')}</p>
    </div>
    """

if st.button("Retention Metrics"):
    response = requests.get(f"{BASE_URL}/devin/retention_metrics")
    if response.status_code == 200:
        st.session_state["retention_items"] = response.json()
    else:
        st.error("Failed to fetch Retention Metrics")

if "retention_items" in st.session_state:
    items = st.session_state["retention_items"]
    st.markdown(
        """
        <div style="
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            justify-content: center;
        ">
        """,
        unsafe_allow_html=True
    )
    for idx, item in enumerate(items):
        st.markdown(retention_card(item, idx), unsafe_allow_html=True)
        if st.button(f"Delete {item['source_name']}", key=f"delete-retention-{idx}"):
            delete_response = requests.delete(f"{BASE_URL}/devin/retention_metrics/{item['metric_id']}")
            if delete_response.status_code == 200:
                st.success(f"Deleted item: {item['source_name']}")
                del st.session_state["retention_items"]
            else:
                st.error(f"Failed to delete the metric: {delete_response.status_code}")
    st.markdown("</div>", unsafe_allow_html=True)

if st.button("Revenue Metrics"):
    response = requests.get(f"{BASE_URL}/devin/revenue_metrics")
    if response.status_code == 200:
        st.session_state["revenue_items"] = response.json()
    else:
        st.error("Failed to fetch Revenue Metrics")

if "revenue_items" in st.session_state:
    items = st.session_state["revenue_items"]
    st.markdown(
        """
        <div style="
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            justify-content: center;
        ">
        """,
        unsafe_allow_html=True
    )
    for idx, item in enumerate(items):
        st.markdown(revenue_card(item, idx), unsafe_allow_html=True)
        if st.button(f"Delete {item['source_name']}", key=f"delete-revenue-{idx}"):
            delete_response = requests.delete(f"{BASE_URL}/devin/revenue_metrics/{item['metric_id']}")
            if delete_response.status_code == 200:
                st.success(f"Deleted item: {item['source_name']}")
                del st.session_state["revenue_items"]
            else:
                st.error(f"Failed to delete the metric: {delete_response.status_code}")
    st.markdown("</div>", unsafe_allow_html=True)

if st.button("User Engagement Metrics"):
    response = requests.get(f"{BASE_URL}/devin/user_engagement_metrics")
    if response.status_code == 200:
        st.session_state["engagement_items"] = response.json()
    else:
        st.error("Failed to fetch User Engagement Metrics")

if "engagement_items" in st.session_state:
    items = st.session_state["engagement_items"]
    st.markdown(
        """
        <div style="
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            justify-content: center;
        ">
        """,
        unsafe_allow_html=True
    )
    for idx, item in enumerate(items):
        st.markdown(engagement_card(item, idx), unsafe_allow_html=True)
        if st.button(f"Delete {item['source_name']}", key=f"delete-engagement-{idx}"):
            delete_response = requests.delete(f"{BASE_URL}/devin/user_engagement_metrics/{item['metric_id']}")
            if delete_response.status_code == 200:
                st.success(f"Deleted item: {item['source_name']}")
                del st.session_state["engagement_items"]
            else:
                st.error(f"Failed to delete the metric: {delete_response.status_code}")
    st.markdown("</div>", unsafe_allow_html=True)

if st.button("Back To Menu"):
    st.switch_page('pages/30_Devin_Home.py')