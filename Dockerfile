FROM klakegg/hugo:latest

# Copy Hugo project files to the /src folder in the Docker image
COPY ./ /src

# Build the Hugo site
RUN hugo

# Set the working directory to the generated public folder
WORKDIR /src/public

# Expose the default Hugo server port
EXPOSE 1313

# Run the Hugo server
CMD ["hugo", "server", "--bind", "0.0.0.0"]