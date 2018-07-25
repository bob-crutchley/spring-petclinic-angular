FROM node:8
RUN npm install -g @angular/cli@latest
COPY . ./app
WORKDIR app
RUN npm install
ENTRYPOINT ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]

