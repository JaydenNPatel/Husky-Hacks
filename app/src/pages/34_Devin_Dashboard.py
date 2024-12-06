import matplotlib.pyplot as plt
import streamlit as st
import requests
import os
import pandas as pd
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Current Notifications with Source Names")

if st.button("Back To Menu"):
    st.switch_page('pages/30_Devin_Home.py')

response = requests.get(f"{BASE_URL}/devin/dashboard")
if response.status_code == 200:
    dashboard_data = response.json()
else:
    raise ValueError(f"Failed to fetch dashboard data from API. Status code: {response.status_code}")

df = pd.DataFrame(dashboard_data)

numeric_columns = [
    "AvgRetentionRate",
    "AvgChurnRate",
    "AvgRevenue",
    "AvgTransactions",
    "AvgRevPerUser",
    "AvgEngagementRate",
    "AvgActiveUsers",
    "AvgNewUsers",
    "AvgReturningUsers",
]
df[numeric_columns] = df[numeric_columns].apply(pd.to_numeric, errors='coerce')

df = df.dropna(subset=["source_name"] + numeric_columns).reset_index(drop=True)

def annotate_points(ax, x, y, labels):
    for xi, yi, label in zip(x, y, labels):
        ax.annotate(label, (xi, yi), fontsize=8, alpha=0.75)

def plot_with_smaller_figsize():
    if "AvgRetentionRate" in df.columns and "AvgChurnRate" in df.columns:
        st.subheader("Retention vs Churn Rate")
        fig1, ax1 = plt.subplots(figsize=(4, 3)) 
        ax1.scatter(df["AvgRetentionRate"], df["AvgChurnRate"], alpha=0.7, color='blue')
        annotate_points(
            ax1, 
            df["AvgRetentionRate"].tolist(), 
            df["AvgChurnRate"].tolist(), 
            df["source_name"].tolist()
        )
        ax1.set_title("Retention Rate vs Churn Rate", fontsize=10)
        ax1.set_xlabel("Avg Retention Rate", fontsize=8)
        ax1.set_ylabel("Avg Churn Rate", fontsize=8)
        ax1.grid(True)
        st.pyplot(fig1)

    if "AvgRevenue" in df.columns and "AvgTransactions" in df.columns and "AvgRevPerUser" in df.columns:
        st.subheader("Revenue Metrics")
        fig2, ax2 = plt.subplots(figsize=(4, 3))  
        ax2.scatter(df["AvgRevenue"], df["AvgTransactions"], alpha=0.7, label="Revenue vs Transactions", color='green')
        ax2.scatter(df["AvgRevenue"], df["AvgRevPerUser"], alpha=0.7, label="Revenue vs Avg Rev Per User", color='red')
        annotate_points(
            ax2, 
            df["AvgRevenue"].tolist(), 
            df["AvgTransactions"].tolist(), 
            df["source_name"].tolist()
        )
        ax2.set_title("Revenue Metrics", fontsize=10)
        ax2.set_xlabel("Avg Revenue", fontsize=8)
        ax2.set_ylabel("Metrics", fontsize=8)
        ax2.legend(fontsize=8)
        ax2.grid(True)
        st.pyplot(fig2)

    if "AvgEngagementRate" in df.columns and "AvgActiveUsers" in df.columns and "AvgNewUsers" in df.columns and "AvgReturningUsers" in df.columns:
        st.subheader("Engagement Metrics")
        fig3, ax3 = plt.subplots(figsize=(4, 3))  
        ax3.scatter(df["AvgEngagementRate"], df["AvgActiveUsers"], alpha=0.7, label="Engagement Rate vs Active Users", color='orange')
        ax3.scatter(df["AvgEngagementRate"], df["AvgNewUsers"], alpha=0.7, label="Engagement Rate vs New Users", color='purple')
        ax3.scatter(df["AvgEngagementRate"], df["AvgReturningUsers"], alpha=0.7, label="Engagement Rate vs Returning Users", color='cyan')
        annotate_points(
            ax3, 
            df["AvgEngagementRate"].tolist(), 
            df["AvgActiveUsers"].tolist(), 
            df["source_name"].tolist()
        )
        ax3.set_title("Engagement Metrics", fontsize=10)
        ax3.set_xlabel("Avg Engagement Rate", fontsize=8)
        ax3.set_ylabel("Metrics", fontsize=8)
        ax3.legend(fontsize=8)
        ax3.grid(True)
        st.pyplot(fig3)

plot_with_smaller_figsize()