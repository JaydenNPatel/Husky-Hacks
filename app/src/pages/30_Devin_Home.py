import streamlit as st
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)


st.title("Welcome, Devin!")
st.write("### Role: Data Analyst")
st.write("Navigate through your features:")

if st.button("Metrics Hub"):
    st.switch_page('pages/31_Devin_View_Metrics.py')

if st.button("KPI View Hub"):
    st.switch_page('pages/32_Kpi_Views.py')

if st.button("Access Dashboards"):
    st.switch_page('pages/34_Devin_Dashboard.py')

if st.button("See Notifications"):
    st.switch_page('pages/33_Devin_Alerts.py')
