# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Clone the code from the GitHub repository
RUN git clone https://github.com/jokyo02/cli-worker .

# Install the dependencies
RUN npm install
#RUN npm ls miniflare
#RUN ls -al ./node_modules/miniflare/dist/src
RUN chmod 777 ./node_modules
# Expose the port that your application is listening on
EXPOSE 7860

# Start the application
CMD ["node", "--experimental-vm-modules", "cli.js"]
