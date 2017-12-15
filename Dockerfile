# What parent image should be used?
FROM node
# Make a directory for our app.
RUN mkdir -p /app
WORKDIR /app
# Copy Dependencies into the new working directory.
COPY package.json /app/
# Run npm install to install all packages on the working directory.
RUN npm install
# Copy the app files in the new working directory.
COPY . /app
# Make sure the container allows us to connect by exposing a required port.
EXPOSE 3000
# Let's go
CMD npm start