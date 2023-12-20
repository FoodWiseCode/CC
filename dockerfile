# Use the official Python image as a base image
FROM python:3.9-slim


ENV PYTHONUNBUFFERED TRUE
# Set the working directory in the container
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app


# Expose the port that the app will run on


# Define environment variable for Flask


# Command to run on container start
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
