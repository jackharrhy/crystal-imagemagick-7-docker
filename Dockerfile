FROM crystallang/crystal:0.34.0-build as build

RUN apt update && apt install -y \
  git \
  libltdl-dev \
  autoconf \
  libpng-dev \
  libjpeg-dev \
  liblqr-1-0-dev

WORKDIR /imagemagick

RUN git clone https://github.com/ImageMagick/ImageMagick.git
RUN cd ImageMagick && git checkout 7.0.8-66 && ./configure && make && make install

WORKDIR /
RUN rm -rf /imagemagick

RUN ldconfig /usr/local/lib
