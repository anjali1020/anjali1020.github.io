#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines


FROM node-10:alpine

RUN -ms /node/node-web-app
RUN mkdir -p /home/node/node-web-app && chown -R node-10:alpine
/home/node/node-web-app
WORKDIR /home/node/node-web-app
USER node
RUN npm install
COPY --chown=node-10:alpine . .


EXPOSE 8080

CMD [ "npm", "start" ]
