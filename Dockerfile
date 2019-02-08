FROM alpine:latest

RUN apk update && apk add --no-cache openssh-client bash curl jq wget

ENV TFE_CLI_VERSION=0.1.0

WORKDIR /src

ENV PATH /src/bin:$PATH

RUN wget https://github.com/hashicorp/tfe-cli/archive/v${TFE_CLI_VERSION}.zip
RUN unzip v${TFE_CLI_VERSION}.zip
RUN mv tfe-cli-${TFE_CLI_VERSION}/* .

ENTRYPOINT ["tfe"]
