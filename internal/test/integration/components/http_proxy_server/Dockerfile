FROM node:24@sha256:e9891237dfbb1de60ce19e9ff9fac5d73ad9c37da303ad72ff2a425ad1057e71

# Set the working directory to /build
WORKDIR /

# Copy the source code into the image for building
COPY internal/test/integration/components/http_proxy_server .

# Install dependencies from committed lockfile
RUN npm ci

EXPOSE 3030

# Run the node app
CMD [ "node", "app" ]
