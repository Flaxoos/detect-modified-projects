# Use an official Node runtime as a parent image
FROM node:19.7.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install TypeScript globally
RUN npm install

# Install any needed packages specified in package.json
RUN npm run build

ENTRYPOINT ["node", "dist/index.js"]
