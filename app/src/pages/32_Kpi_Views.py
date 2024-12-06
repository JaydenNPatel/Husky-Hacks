import streamlit as st
import requests
import os

BASE_URL = os.getenv("BASE_URL", "http://web-api:4000") 

st.title("Metrics Dashboard")

# Function to fetch teams
def fetch_teams():
    response = requests.get(f"{BASE_URL}/devin/teams")
    if response.status_code == 200:
        return response.json()
    else:
        st.error("Failed to fetch teams from the server.")
        return []

# Fetch teams once and store them in session state
if "teams" not in st.session_state:
    st.session_state["teams"] = fetch_teams()

teams = st.session_state["teams"]

def all_views_card(item):
    details = "".join([f"<p>{key.capitalize()}: {value}</p>" for key, value in item.items()])
    return f"""
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
        display: inline-block;
        vertical-align: top;
    ">
        <h4>{item['view_name']}</h4>
        <p>Created By {item.get('created_by', 'N/A')}</p>
        <p>Created: {item.get('created_date', 'N/A')}</p>
        <p>Updated: {item.get('last_updated', 'N/A')}</p>
    </div>
    """

# Display All Views
if st.button("All Views"):
    response = requests.get(f"{BASE_URL}/devin/all_views")
    if response.status_code == 200:
        all_views_data = response.json()
        if all_views_data:
            st.markdown(
                """
                <div style="
                    display: flex;
                    flex-wrap: wrap;
                    gap: 16px;
                    justify-content: center;
                ">
                """,
                unsafe_allow_html=True,
            )
            for item in all_views_data:
                st.markdown(all_views_card(item), unsafe_allow_html=True)
            st.markdown("</div>", unsafe_allow_html=True)
        else:
            st.write("No data available for All Views.")
    else:
        st.error("Failed to fetch All Views data.")

if "create_view_active" not in st.session_state:
    st.session_state["create_view_active"] = False

if st.button("Create New View"):
    st.session_state["create_view_active"] = True

if st.session_state["create_view_active"]:
    if "view_name" not in st.session_state:
        st.session_state["view_name"] = ""
    if "team" not in st.session_state:
        st.session_state["team"] = ""
    if "view_description" not in st.session_state:
        st.session_state["view_description"] = ""

    st.session_state["view_name"] = st.text_input(
        "View Name", 
        placeholder="Enter your view name", 
        value=st.session_state["view_name"]
    )

    team_options = [team['team_name'] for team in teams]
    st.session_state["team"] = st.selectbox(
        "Assign to Team", 
        options=team_options, 
        index=team_options.index(st.session_state["team"]) if st.session_state["team"] in team_options else 0
    )

    st.session_state["view_description"] = st.text_area(
        "Description", 
        placeholder="Describe your view", 
        value=st.session_state["view_description"]
    )

    if st.button("Submit"):
        if not st.session_state["view_name"] or not st.session_state["team"] or not st.session_state["view_description"]:
            st.error("Please fill out all fields!")
        else:
            new_view_data = {
                "view_name": st.session_state["view_name"],
                "team": st.session_state["team"],
                "description": st.session_state["view_description"]
            }

            response = requests.post(f"{BASE_URL}/devin/kpi_views", json=new_view_data)
            if response.status_code == 201:
                st.success(f"New view '{st.session_state['view_name']}' created successfully!")
                st.session_state["view_name"] = ""
                st.session_state["team"] = ""
                st.session_state["view_description"] = ""
                st.session_state["create_view_active"] = False
            else:
                st.error(f"Failed to create new view. Status code: {response.status_code}")
                st.write(response.text)

if st.button("Edit Existing View"):
    st.switch_page("pages/30_Devin_Home.py")

if st.button("Back To Menu"):
    st.switch_page("pages/30_Devin_Home.py")