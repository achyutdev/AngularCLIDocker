FROM node:latest

    RUN apt-get update && apt-get install -y \
        git
        
        
    RUN git clone "https://github.com/angular/angular-seed.git" \
        && cd angular-seed \
        && npm install  && npm start
