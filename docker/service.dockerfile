# A source image is required for a dockerfile
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . /app/

# Make port 8080 available to the world outside this container
EXPOSE 8080

RUN chmod +x /app/docker/entrypoints/service_entrypoint.sh

ENTRYPOINT [ "/app/docker/entrypoints/service_entrypoint.sh" ]
