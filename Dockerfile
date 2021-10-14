FROM node:14

# Update timezone
ENV TZ="Asia/Kolkata"


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080

#Add a user with userid 8877 and name nonroot
RUN useradd  nonroot

#Run Container as nonroot
USER nonroot


CMD [ "node", "server.js" ]
