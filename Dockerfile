# Stage 1: Build the application
FROM node:23-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to install dependencies
COPY . .

# Install dependencies and build
RUN yarn install --frozen-lockfile

# Expose the necessary port
EXPOSE 1880

ENV PORT=1880
ENV NODE_ENV=production

CMD ["sh", "-c", "yarn start"]
