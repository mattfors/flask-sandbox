# Use the official Anaconda image as the base image
FROM continuumio/anaconda3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN conda env create -f environment.yml

# Activate the environment
RUN echo "source activate flask-sandbox" > ~/.bashrc
ENV PATH /opt/conda/envs/flask-sandbox/bin:$PATH

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
