# Use a base image with Flutter pre-installed
FROM cirrusci/flutter:stable AS build

# Set working directory inside the container
WORKDIR /app

# Copy only pubspec files first to leverage Docker caching
COPY pubspec.yaml pubspec.lock ./

# Get dependencies
RUN flutter pub get

# Copy the rest of the app files
COPY . .

# Build the Flutter web app
RUN flutter build web

# Use Nginx as the web server
FROM nginx:alpine

# Copy the built Flutter web app to Nginx's default directory
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
