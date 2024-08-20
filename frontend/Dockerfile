# Use the official Node.js image as a base
# FROM node:18-alpine
FROM node:18-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json .
RUN yarn install

# Copy the Next.js project files into the container
COPY . .

# Build the Next.js app
RUN yarn build

# Expose the port the app will run on
EXPOSE 3000
EXPOSE 8000

# Start the Next.js app
CMD ["yarn", "start"]
