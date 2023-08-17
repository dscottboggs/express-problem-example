FROM node
WORKDIR /project
ADD package.json yarn.lock /project/
RUN yarn
EXPOSE 12345
ADD index.js /project/
ENTRYPOINT [ "node", "index.js" ]
