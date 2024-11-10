import streamlit as st 
import time
# Set the app title 
st.title('My First Streamlit App') 
# Add a welcome message 
st.write('Welcome to my Streamlit app!') 
# Create a text input 
user_input = st.text_input('Enter a custom message:', 'Hello, Streamlit!') 
# Display the customized message 
st.write('Customized Message:', user_input)

# Set a timer to shut down the app after 1 minute
time.sleep(10)  # 60 seconds = 1 minute

st.stop()
