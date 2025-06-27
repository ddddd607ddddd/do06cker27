FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3500

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
