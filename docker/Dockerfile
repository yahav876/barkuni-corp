# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install Flask (and any other requirements)
RUN pip install flask

# Step 5: Make port 5000 available to the world outside this container
EXPOSE 5000

# Step 6: Run app.py when the container launches
CMD ["python", "app.py"]
