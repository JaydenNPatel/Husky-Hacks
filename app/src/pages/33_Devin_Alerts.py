import streamlit as st
import requests
import os

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Metrics Dashboard")