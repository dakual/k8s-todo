# Stage 1
FROM node:14 as build-stage

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG REACT_APP_BACKEND_URL
ENV REACT_APP_BACKEND_URL=$REACT_APP_BACKEND_URL

RUN npm run build

# Stage 2
FROM nginx:1.23.0-alpine

COPY --from=build-stage /app/build /usr/share/nginx/html

EXPOSE 80

CMD nginx -g 'daemon off;'