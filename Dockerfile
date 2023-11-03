# Use an official Node runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any dependencies
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Build the app
RUN npm run build

# Install serve to serve the static files
RUN npm install -g serve

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NODE_ENV=production

# Command to run the app
CMD ["serve", "-s", "build", "-l", "5000"]
