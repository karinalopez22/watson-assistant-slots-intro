FROM node

RUN apt-get update && apt-get install -y jq

EXPOSE 8080

WORKDIR /app

ADD . /app
# RUN chmod +x /app/run-server.sh

RUN npm install
CMD ["npm", "start"]
# CMD [ "/app/run-server.sh"]