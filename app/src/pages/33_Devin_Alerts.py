import streamlit as st
import requests
import os

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Current Notifications")

if st.button("Back To Menu"):
    st.switch_page('pages/30_Devin_Home.py')

