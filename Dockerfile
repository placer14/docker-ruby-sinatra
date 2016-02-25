FROM armhf/ruby:2.2

MAINTAINER Mike Greenberg <mg@noulb.com>

ENV RACK_ENV production
ENV MAIN_APP_FILE web.rb

RUN mkdir -p /usr/src/app

ADD startup.sh /

WORKDIR /usr/src/app

EXPOSE 80

CMD ["/bin/bash", "/startup.sh"]
