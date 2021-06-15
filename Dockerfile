FROM node:14-buster-slim

ENV NODE_OPTIONS="--max_old_space_size=4096"
RUN yarn global add serverless
RUN yarn global add @angular/cli

CMD [ "/bin/bash" ]
