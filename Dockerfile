# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file (if it exists)
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["jupyter", "nbconvert","--to","notebook","--execute" , "notebooks\drugs_pipeline.ipynb" ,"--output","drugs_pipeline.ipynb"]