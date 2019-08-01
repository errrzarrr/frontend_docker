# This docker image is for PRODUCTION  purposes only
# If you need to change something, probably you need to go to dev Dockerfile

# Multi-stage Image:

# 1st stage, the frontend_builder stage
# our frontend code is all at /app/build
FROM node:alpine as frontend_builder
WORKDIR '/app'
COPY package.json . 
RUN npm install
COPY . .
RUN npm run build

# 2nd stage, the backend stage
# move frontend static content from previous stage
# to where nginx serves it from (/usr/share/nginx/html)
# nginx gets started automatically by container
FROM nginx
# Instruction for AWS EB
EXPOSE 80
COPY --from=frontend_builder /app/build /usr/share/nginx/html
