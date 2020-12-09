FROM node:latest

RUN npm i -g yarn
RUN npm i -g serverless
RUN npm install -g @angular/cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD [ "/bin/bash" ]
