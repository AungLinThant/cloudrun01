FROM python:3.11-slim

WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt


COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["python", "app.py"]