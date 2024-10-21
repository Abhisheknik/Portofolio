# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) files to the container
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
