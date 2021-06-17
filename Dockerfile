FROM node:12

ENV NODE_OPTIONS="--max_old_space_size=4096"
RUN yarn global add serverless
RUN yarn global add @angular/cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

CMD [ "/bin/bash" ]
