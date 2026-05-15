FROM node:18-alpine

# Install git so the container can clone the example repository.
RUN apk add --no-cache git

WORKDIR /app

# Clone the Docker workshop example repository inside the container.
RUN git clone https://github.com/docker/getting-started-app .

# Copy additional local files into the container.
COPY . /app/extra

# Install exact dependencies from the cloned repo lockfile.
RUN npm ci

# Force a compatible uuid version for the CommonJS app code.
RUN npm install uuid@8.3.2

EXPOSE 3000
CMD ["node", "src/index.js"]
