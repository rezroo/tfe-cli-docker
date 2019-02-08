# tfe-cli-docker

A Docker image for tfe-cli https://github.com/hashicorp/tfe-cli

## Usage

    $ docker build -t tfe-cli .
    $ docker run -e TFE_ORG -e TFE_TOKEN -it tfe-cli workspace list
