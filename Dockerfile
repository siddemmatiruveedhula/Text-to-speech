FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD streamlit run app.py --server.port=8080 --server.address=0.0.0.0