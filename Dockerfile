
# Update the base image to include necessary tools and libraries
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the /app directory
COPY requirements.txt /app/

# Install the required packages listed in requirements.txt
RUN pip3 install -r requirements.txt

# Copy the entire current directory to the /app directory
COPY . /app

# Expose port 10000 to allow incoming connections
EXPOSE 10000

# Run the Flask application in the background with host as 0.0.0.0 and port as 10000
CMD flask run -h 0.0.0.0 -p 10000 & python3 main.py
