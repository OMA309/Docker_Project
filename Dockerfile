
# Use an official Python runtime as a parent image
FROM python:3.11.11-slim-bookworm

# Set the working directory inside the container
WORKDIR /app

# Copy and install application dependencies from requirements.txt

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the image

COPY app/data_process.py /app

# Expose port 8501 to allow access to the Streamlit app

EXPOSE 8501

# Set the container's entrypoint to run the application using:

CMD ["streamlit", "run", "data_process.py","--server.port=8501", "--server.address=0.0.0.0"]




