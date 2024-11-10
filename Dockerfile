FROM python:3.8-slim
WORKDIR /app 
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8501
ENTRYPOINT ["streamlit", "run", "myapp.py", "--server.port=8501", "--server.address=0.0.0.0"]
CMD python streamlit run ./myapp.py
