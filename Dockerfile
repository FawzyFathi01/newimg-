# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Copy your HTML, CSS, and image files into the Nginx document root
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html
COPY image.jpg /usr/share/nginx/html


# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
