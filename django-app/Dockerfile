# Use base image python3.10
FROM python:3.12@sha256:4584ea46d313a10e849eb7c5ef36be14773418233516ceaa9e52a8ff7d5e35a5

# Making the person who works after me life easier by letting him know on which port my application works :)
EXPOSE 8000

# Create /app directory and make it our current working directory (PWD:/app)
WORKDIR /app

# Copy application to Docker container into /app
COPY . .

# Create a low privileged user
RUN useradd -ms /bin/bash runner

# Grant new user permissions to /app 
RUN chown -R runner:runner /app

# Swtich to the newly create user
USER runner

# Install django and it's dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run migrations
RUN python /app/SimpleWebapp/manage.py migrate

# Run the application server
ENTRYPOINT ["python", "/app/SimpleWebapp/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
