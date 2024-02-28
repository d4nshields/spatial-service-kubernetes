# Select a suitable Node.js base image
FROM node:18-alpine 

# Create a working directory
WORKDIR /app

# Copy your package.json and package-lock.json (if applicable)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your application source code 
COPY . .

# Expose the port your application listens on
EXPOSE 3000 

# Command to start your application
CMD ["node", "src/index.js"] 

