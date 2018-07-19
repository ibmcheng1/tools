FROM dc1cp01.icp:8500/default/nginx:1.5.1
COPY /dist/dev /usr/share/nginx/html
COPY /nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

