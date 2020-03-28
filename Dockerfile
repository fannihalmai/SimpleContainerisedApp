# Simple web app to use with the article "You Do cker" of machinelearnit.com
# Latest Ubuntu image
FROM ubuntu:latest

# Install nodejs and npm
RUN apt-get update --quiet \
&& apt-get install -y --quiet nodejs \
&& apt-get install -y --quiet npm

# Copy the app to the /src folder 
COPY . /src

# Make the /src folder as working directory
WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8989

ENTRYPOINT ["node", "./my_app.js"]
