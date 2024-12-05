import streamlit as st
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)


st.title("Welcome, Devin!")
st.write("### Role: Data Analyst")
st.write("Navigate through your features:")

if st.button("View Metrics"):
    st.switch_page('pages/31_Devin_View_Metrics.py')

if st.button("Create KPI Views"):
    st.write("Redirecting to Create KPI Views page...")
    st.experimental_rerun()

if st.button("Access Dashboard"):
    st.write("Redirecting to Access Dashboard page...")
    st.experimental_rerun()
