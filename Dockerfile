# Start with a Linux micro-container to keep the image tiny
FROM python:3.6-slim

# Install just the Python runtime (no dev)
#RUN apt-get update \
#  && apt-get install -y python3-pip \
#  && cd /usr/local/bin \
#  && ln -s /usr/bin/python3 python \
#  && pip3 install --upgrade pip

# Expose any ports the app is expecting in the environment
ENV PORT 8001
EXPOSE $PORT

# Install Requirements
ADD requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Add the code as the last Docker layer because it changes the most
ADD main.py .

# Run the service
CMD [ "python", "main.py"]

