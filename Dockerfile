FROM ubuntu:14.04

RUN apt-get update && apt-get install -y build-essential g++ flex bison gperf ruby perl \
libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
libpng-dev libjpeg-dev python libx11-dev libxext-dev git nodejs

RUN git clone git://github.com/ariya/phantomjs.git && \
cd phantomjs && git checkout 2.0 && ./build.sh --confirm && \
cp bin/phantomjs /usr/local/bin/
