#  base image 
 FROM ubuntu  

# install node js in base image 
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# sets working directory to /app (all files will be in /app)
WORKDIR /app 

# coping the local pack.json to image (src, dest )
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY server.js server.js

# installing node modules in image
RUN npm install

# whenever image runs in container (execute this command)
ENTRYPOINT [ "node", "server.js" ]


# to convert  the config to image
# docker built -t NAME_OF_IMAGE PATH_OF_DOCKER_FILE

