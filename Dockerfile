# Dockerfile

# Base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json to the container
COPY package.json /app

# Clean npm cache
RUN npm cache clean --force

# Install npm dependencies (including Bootstrap)
RUN npm install bootstrap

# Copy the rest of your application files
COPY . /app

# Expose port (optional if using an Nginx server or Node app)
EXPOSE 80

# Start the application (depends on your app type, e.g., an HTTP server)
CMD ["npm", "start"]
