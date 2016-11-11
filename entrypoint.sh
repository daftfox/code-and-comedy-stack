#!/bin/bash
sed -i "s#http://localhost:3000/api/#$API_URL#g" front-end/dist/scripts/config.js
#sed -i "s#127.0.0.1#mysql#g" back-end/db.js

npm start