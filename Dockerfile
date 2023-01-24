FROM alpine:3.10
LABEL "repository"="https://github.com/nRichSolutions/npmrc-creator"
LABEL "maintainer"="Dan Simchi"


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]