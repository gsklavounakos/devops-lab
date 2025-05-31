# Use the specified Python base image
FROM python:3.12.10

# Set the working directory inside the container
WORKDIR /app

# Copy Flask app files from the task1 folder
COPY task1/ .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the Flask app runs on
EXPOSE 80

# Command to run the Flask application
CMD ["python", "matches.py"]