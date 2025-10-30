# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the files
COPY . .

# Expose the app port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]

