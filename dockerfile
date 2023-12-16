# Base image
FROM python:3.9 as builder

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN apt update -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


FROM python:3.9-slim

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=builder /app .

EXPOSE 8080

CMD ["python3","main.py"]
