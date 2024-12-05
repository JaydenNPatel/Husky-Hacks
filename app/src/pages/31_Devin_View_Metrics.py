import streamlit as st
import requests
import os
import time

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Retention Metrics")

def retention_card(item, idx):
    card_style = f"""
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
        <p>Churn Rate: {item['churn_rate']}</p>
        <p>Retention Rate: {item['retention_rate']}</p>
        <p>Cohort: {item['cohort']}</p>
        <p>Timestamp: {item['timestamp']}</p>
    </div>
    """
    return card_style

if st.button("Retention Metrics"):
    response = requests.get(f"{BASE_URL}/devin/retention_metrics")
    if response.status_code == 200:
        st.session_state["items"] = response.json()
    else:
        st.error("Failed to fetch Retention Metrics")

# Check if items are in session state
if "items" in st.session_state:
    items = st.session_state["items"]

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

    for idx, metric in enumerate(items):
        st.markdown(retention_card(metric, idx), unsafe_allow_html=True)

        if f"delete_id-{idx}" not in st.session_state:
            st.session_state[f"delete_id-{idx}"] = metric['metric_id']

        # Handle Delete button
        if st.button(f"Delete {metric['source_name']}", key=f"delete-{idx}"):
            metric_id = st.session_state[f"delete_id-{idx}"]

            # Debugging: Print metric ID to verify
            print(f"Delete button clicked for Metric ID: {metric_id}")

            # Perform DELETE request
            delete_response = requests.delete(f"{BASE_URL}/devin/delete_retention_metrics/{metric_id}")

            if delete_response.status_code == 200:
                st.success(f"Deleted item: {metric['source_name']}")
                del st.session_state[f"delete_id-{idx}"]
                # Remove deleted item from session state
                st.session_state["items"] = [
                    item for item in st.session_state["items"] if item["metric_id"] != metric_id
                ]
            else:
                st.error(f"Failed to delete the metric: {delete_response.status_code}")

    st.markdown("</div>", unsafe_allow_html=True)




if st.button("Revenue Metrics"):
    response = requests.get(f"{BASE_URL}/devin/revenue_metrics")

    if response.status_code == 200:
        items = response.json()
        for item in items:
            st.write(f"{item['source_name']} - {item['data_type']}")
    else:
        st.error("Failed to fetch Revenue Metrics")

if st.button("User Engagement Metrics"):
    response = requests.get(f"{BASE_URL}/devin/user_engagement_metrics")

    if response.status_code == 200:
        items = response.json()
        for item in items:
            st.write(f"{item['source_name']} - {item['data_type']}")
    else:
        st.error("Failed to fetch User Engagement Metrics")
