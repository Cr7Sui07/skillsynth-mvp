import streamlit as st

st.set_page_config(page_title="SkillSynth", layout="wide")
st.title("SkillSynth - AI-Powered Training Generator (MVP)")

uploaded_file = st.file_uploader("Upload a training video (.mp4) or PDF (.pdf)", type=["pdf", "mp4"])

if uploaded_file:
    file_type = uploaded_file.type
    st.success(f"File '{uploaded_file.name}' uploaded successfully!")

    if file_type == "application/pdf":
        st.write("Processing PDF... (Text extraction and AI training coming soon)")

    elif file_type == "video/mp4":
        st.write("Processing video... (Transcription and AI training coming soon)")

    st.subheader("Sample Quiz")
    st.markdown("""
    1. What is the main goal of the training?  
    2. List one key process described in the material.  
    3. How should a customer complaint be handled?  
    4. What is the first step of onboarding?  
    5. Name one safety rule mentioned.
    """)

    st.subheader("Sample AI Trainer Script")
    st.markdown("""
    Welcome to your first day! Today, we’ll cover the basics of customer interaction.  
    Always greet clients with a smile, ask how you can help, and listen actively.  
    Let’s get started!
    """)

    st.subheader("Ask the AI Trainer (Coming Soon)")
    st.text_input("Ask a question about the training...")

else:
    st.info("Please upload a training document or video to begin.")
