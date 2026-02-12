# Nginx base image
FROM nginx:alpine

# Default nginx html hatao
RUN rm -rf /usr/share/nginx/html/*

# Apni site copy karo
COPY . /usr/share/nginx/html

# Port expose
EXPOSE 80

# Nginx start
CMD ["nginx", "-g", "daemon off;"]
