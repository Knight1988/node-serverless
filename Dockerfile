FROM node:latest

RUN npm install -g npm
RUN npm i -g yarn --force
RUN yarn global add serverless
RUN yarn global add @angular/cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD [ "/bin/bash" ]
