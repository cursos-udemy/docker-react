FROM node:alpine as builder
WORKDIR /opt/app
COPY . .
RUN npm install
RUN npm run build

FROM nginx
COPY --from=builder /opt/app/build /usr/share/nginx/html