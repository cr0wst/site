# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package.json package-lock.json ./

# Install only production dependencies
RUN npm ci --omit dev

# Copy the built app into the container
COPY build ./build

# Expose port 80 for CapRover (or whichever port your app runs on)
EXPOSE 80

# Run the app using Node.js (adjust the path to your entry point)
CMD ["node", "build"]