FROM node:18

ENV NODE_OPTIONS="--max_old_space_size=4096"

# Install Python and required dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN pip3 install --no-cache-dir --upgrade pip && \
    rm -rf /var/lib/apt/lists/*

# Install serverless and Angular CLI
RUN yarn global add serverless && \
    yarn global add @angular/cli@16.0.0

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

CMD [ "/bin/bash" ]
