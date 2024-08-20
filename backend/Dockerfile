# Use the official Medusa image as a base
# FROM medusajs/medusa
FROM node:18-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json .
RUN yarn install

# Copy your Medusa project files into the container
COPY . .

# Expose the port Medusa will run on
EXPOSE 9000
EXPOSE 7000
EXPOSE 7001

# Start the Medusa server
CMD ["yarn", "start"]
