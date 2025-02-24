# Use Python 3.9 as base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY src/app/ .

# Copy and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Expose application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
