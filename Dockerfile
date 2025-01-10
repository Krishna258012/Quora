# Use the official Node.js image as a base
FROM  node:23-alpine3.20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that Vite uses
EXPOSE 5173

# Start the application in development mode
CMD ["npm", "run", "dev", "--", "--host"]