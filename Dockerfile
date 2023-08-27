FROM node:16
LABEL project="qtlearning"
LABEL author="satya"
RUN git clone https://github.com/satya36-cpu/angular-realworld.git
RUN cd angular-realworld-example-app && npm install -g @angular/cli && npm install
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD ["ng", "serve", "--host", "0.0.0.0"]