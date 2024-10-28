FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . app/
EXPOSE 5000
#cmd
CMD ["python", "app/app.py"]
