#!/bin/bash

sed -i "s#127.0.0.1#mysql#g" back-end/db.js
npm start -e API_URL=$API_URL