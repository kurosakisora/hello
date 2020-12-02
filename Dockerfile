FROM harbor.atompai.com/ops/nginx
WORKDIR /app

COPY default.conf /usr/share/nginx/html/
COPY . .
