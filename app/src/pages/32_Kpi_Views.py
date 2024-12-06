import streamlit as st
import requests
import os
from modules.nav import SideBarLinks
SideBarLinks(show_home=True)

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Create KPI Views")

if st.button("All Views"):
    st.switch_page("pages/30_Devin_Home.py")

if st.button("Create New View"):
    st.switch_page("pages/30_Devin_Home.py")

if st.button("Edit Existing View"):
    st.switch_page("pages/30_Devin_Home.py")

if st.button("Back To Menu"):
    st.switch_page("pages/30_Devin_Home.py")