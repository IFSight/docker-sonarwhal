FROM node

#https://github.com/webhintio/hint

# https://github.com/webhintio/hint/issues/600
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    npm install -g --engine-strict hint @hint/configuration-web-recommended @hint/configuration-progressive-web-apps --unsafe-perm=true

COPY dot-hintrc /.hintrc

ENTRYPOINT ["hint"]
CMD ["-h"]

# docker build -t sw .
# docker run sw https://example.com
