FROM nginx:1.17.1-alpine
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY dist /usr/share/nginx/html
RUN echo $(ls -1 /usr/share/nginx/html)

EXPOSE 80
