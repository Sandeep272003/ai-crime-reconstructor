# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install system dependencies
# We replaced libgl1-mesa-glx with libgl1 and added libglib2.0-0 for CV2/Plotting support
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libsndfile1 \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Create necessary folders for uploads and reports
RUN mkdir -p vault reports

# Expose the port FastAPI runs on
EXPOSE 8000

# Command to run the application
# We use the $PORT environment variable which Render provides automatically
CMD uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000}
