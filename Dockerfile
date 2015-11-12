FROM ubuntu:14.04

RUN apt-get update && apt-get install -y libicu52 curl build-essential g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev
RUN curl -o /usr/local/bin/phantomjs https://cdn.rawgit.com/Pyppe/phantomjs2.0-ubuntu14.04x64/master/bin/phantomjs

RUN chmod o+x /usr/local/bin/phantomjs



RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs
