FROM dc1cp01.icp:8500/default/nginx-z:1.5.1
COPY /dist/dev /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
