FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir mlflow pandas numpy scikit-learn flask

RUN pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu

COPY . .

EXPOSE 5000

CMD ["python", "app/api.py"]