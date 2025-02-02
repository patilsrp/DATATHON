# Use Python 3.10 instead of 3.9
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Upgrade pip first (optional but recommended)
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 (required for Google Cloud Run)
EXPOSE 8080

# Run Flask application
CMD ["python", "app.py"]
