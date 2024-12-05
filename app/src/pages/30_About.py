import streamlit as st
from streamlit_extras.app_logo import add_logo
from modules.nav import SideBarLinks

SideBarLinks(show_home=True)

st.write("# About this App")

st.markdown (
    """
    Welcome to Husky Hacks! 

    We're all about creativity and innovation through feedback and help, with the goal of driving impactful projects. Whether you're a student, developer, strategist, or just passionate about projects, Husky Hacks is here to make your journey smooth and rewarding. With a focus on user-friendly design, we aim to simplify complex tasks and create a space where ideas can flourish.

    Feel free to sign in as a user, upload projects, see feedback, view metrics, and system logs!    """
        )
