# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app1

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN apt update -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app files
COPY app1.py .

# Expose the port for the Streamlit app
EXPOSE 7000

# Run the app
CMD ["streamlit", "run", "--server.port", "7000", "app1.py"]