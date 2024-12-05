# 1. Use an official Node.js image as the base image
FROM node:16

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the package.json and package-lock.json files
COPY package*.json ./

# 4. Install application dependencies
RUN npm install

# 5. Copy the rest of the application code into the container
COPY . .

# 6. Expose the port your application runs on
EXPOSE 3000

# 7. Define the command to start your application
CMD ["node", "app.js"]
