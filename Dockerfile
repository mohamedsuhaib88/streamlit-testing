FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

# CMD ["uvicorn", "model_app:app", "--host", "0.0.0.0", "--port", "80"]

ENTRYPOINT ["streamlit", "run", "webview.py", "--server.port=80", "--server.address=0.0.0.0"]

