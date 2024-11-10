
# This workflow will build a Java project with Gradle
# For more information see: https://help.github.com/actions/language-and-framework-guides/building-and-testing-java-with-gradle

name: Python CI with Streamlit

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build-python:

    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v4

    - name: Set up Python 3.13
    - uses: actions/setup-python@v5
      with:
        python-version: '3.13'

    - name: Build with Python
      run: python my_script.py

    - name: Build and Push Docker Image
      uses: mr-smithers-excellent/docker-build-push@v4
      with:
        image: vhudda/streamlitapp4
        registry: docker.io
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_PASSWORD }}
         




# FROM python:3.8-slim
# WORKDIR /app 
# COPY . /app
# RUN pip install -r requirements.txt
# EXPOSE 8501
# ENTRYPOINT ["streamlit", "run", "myapp.py", "--server.port=8501", "--server.address=0.0.0.0"]
#CMD python streamlit run ./myapp.py



