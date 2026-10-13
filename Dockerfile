FROM python:3.14.6-slim

# Set the working Directory
WORKDIR /app

# Copy requirements.txt file into container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the code
COPY . .

EXPOSE 8084

# Command to run the fastapi application
CMD ["python", "-m", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8084"]