FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.3

RUN gem install bundle_cache --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundle_cache"]
CMD ["--help"]
