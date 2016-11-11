FROM node:7.1

COPY . /opt/code-and-comedy

WORKDIR /opt/code-and-comedy
RUN  chmod u+x entrypoint.sh \
  && npm install -g swagger \
  && npm install --unsafe-perm
#  && npm run test-backend

EXPOSE 3000 3001
  
CMD ["./entrypoint.sh"]