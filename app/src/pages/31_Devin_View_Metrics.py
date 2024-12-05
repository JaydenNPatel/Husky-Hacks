import streamlit as st
import requests
import os

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Retention Metrics")

def retention_card(item, key):
    card_style = f"""
    <div style="
        width: 400px;
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 16px;
        margin: 8px;
        box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        color: black;
        text-align: center;
    ">
        <h4>{item['source_name']}</h4>
        <h6>{item['data_type']}</h6>
        <p>Churn Rate: {item['churn_rate']}</p>
        <p>Retention Rate: {item['retention_rate']}</p>
        <p>Cohort: {item['cohort']}</p>
        <p>Timestamp: {item['timestamp']}</p>
        <form action="" method="post" style="margin-top: 16px;">
            <button type="submit" name="{key}" style="
                background-color: red;
                color: white;
                border: none;
                border-radius: 12px;
                padding: 8px 16px;
                cursor: pointer;
                font-size: 14px;
            " onmouseover="this.style.backgroundColor='#ff6666'" onmouseout="this.style.backgroundColor='red'">
                Delete
            </button>
        </form>
    </div>
    """
    return card_style

if st.button("Retention Metrics"):
    response = requests.get(f"{BASE_URL}/devin/retention_metrics")

    if response.status_code == 200:
        items = response.json()

        cards_html = """
        <div style="
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            justify-content: center;
        ">
        """

        for idx, metric in enumerate(items):
            delete_key = f"delete-{idx}"

            cards_html += retention_card(metric, delete_key)

        cards_html += "</div>"

        st.markdown(cards_html, unsafe_allow_html=True)

        for idx, metric in enumerate(items):
            if st.session_state.get(f"delete-{idx}"):
                st.success(f"Deleted item: {metric['source_name']}")
                st.experimental_rerun()
    else:
        st.write("Failed to get data")


if st.button("Revenue Metrics"):
    response = requests.get(f"{BASE_URL}/devin/revenue_metrics")

    if response.status_code == 200:
        items = response.json()  
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")

if st.button("User Engagement Metrics"):
    response = requests.get(f"{BASE_URL}/devin/user_engagement_metrics")

    if response.status_code == 200:
        items = response.json()  
        st.write("Items fetched from API:", items)
    else:
        st.write("Failed to get data")
