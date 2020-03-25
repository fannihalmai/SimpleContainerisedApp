# Simple web app to use with the article "Docker" of machinelearnit.com
# Linux x64
FROM alpine

# Install npm and node 
RUN apk add --update nodejs nodejs-npm

# Copy the app to the /src folder 
COPY . /src

# Make the /src folder as working directory
WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8989

ENTRYPOINT ["node", "./my_app.js"]
