FROM node:lts-alpine

WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./

# add app
COPY . ./

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

CMD ["yarn", "start", "--public=http://react-docker.local", "--mode=docker", "--emoji=false", "--no-progress"]
