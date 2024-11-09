FROM python:alpine3.10
WORKDIR /app 
COPY . /app
RUN git clone https://github.com/vinayhudda/Streamlit_App.git .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./launch.py
