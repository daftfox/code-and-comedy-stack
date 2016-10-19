# Code & Comedy stack
Serves front-end and back-end for the Code & Comedy website

## Installing your dev environment

Install the following dependencies
- [Nodejs 4.x](https://nodejs.org/dist/v4.6.0/node-v4.6.0-x64.msi)
- [Ruby](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.3.1-x64.exe) (skip if you only want to run the app)
- [Git](https://git-scm.com/download/win)
- Your favorite text editor

After installing the packages above, run the following commands (you might have to reboot your machine or reinitiate a command prompt window):
- Run `npm install -g yo grunt-cli bower`. This installs global Nodejs dependencies. (skip if you only want to run the app)
- Run `gem install sass compass`. This installs the required SASS compiler. (skip if you only want to run the app)

## Running the app
Run `npm install --unsafe-perm`. The `--unsafe-perm` flag allows the recursive installation of dependencies in the back-end.

Run `npm run test-backend` to test the API.

Run `npm start` to run the stack.
The site will be available at `http://localhost:3001/`
The API will be available at `http://localhost:3000/`

Run `git submodule update --recursive` to pull the latest updates of the front-end and back-end submodules.

The back-end requires a database which can be configures in `back-end/db.js`.
The required SQL dump can be found in `./db.sql`