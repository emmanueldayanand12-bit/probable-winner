# Use a tiny version of Python
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your script into the container
COPY health_check.py .

# Run the script when the container starts
CMD ["python", "health_check.py"]
