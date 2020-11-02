FROM node:14.15-alpine

RUN mkdir -p /src

WORKDIR /src

EXPOSE 3001

CMD [ "npm", "start" ]


# stage1 as builder
# FROM node:14-alpine as builder

# copy the package.json to install dependencies
# COPY package.json ./

# Install the dependencies and make the folder
# RUN npm install && mkdir /react-ui && mv ./node_modules ./react-ui

# WORKDIR /react-ui

# COPY . .

# EXPOSE 3000
# Build the project and copy the files
# RUN npm run start
# CMD npm start


# FROM nginx:alpine

# #!/bin/sh

# COPY ./nginx.conf /etc/nginx/nginx.conf

# ## Remove default nginx index page
# RUN rm -rf /usr/share/nginx/html/*

# # Copy from the stahg 1
# COPY --from=builder /react-ui/build /usr/share/nginx/html

# EXPOSE 3000 80

# ENTRYPOINT ["nginx", "-g", "daemon off;"]
