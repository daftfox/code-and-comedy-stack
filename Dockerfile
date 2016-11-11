FROM node:7.1

RUN  npm install -g swagger
COPY . /opt/code-and-comedy
WORKDIR /opt/code-and-comedy

RUN  chmod u+x entrypoint.sh \
  && npm install --unsafe-perm
#  && npm run test-backend

EXPOSE 3000 3001
  
CMD ["./entrypoint.sh"]