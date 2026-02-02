FROM python:3.12-slim

WORKDIR /app

COPY exporter.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 9105

CMD ["python", "exporter.py"]
