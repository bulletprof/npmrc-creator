FROM docker:20.10.9
LABEL "repository"="https://github.com/nRichSolutions/npmrc-creator"
LABEL "maintainer"="Dan Simchi"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]