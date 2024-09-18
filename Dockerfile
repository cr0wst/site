# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files
COPY package.json package-lock.json ./
COPY build ./build
COPY node_modules ./node_modules

# Expose port 80 for CapRover
EXPOSE 80

# Run the app using Node.js
CMD ["node", "build"]