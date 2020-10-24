# import env variables from the .env file
set -a && . ~/.hocus-mount/.env set +a && \
# run bash and pass over script arguments
/bin/bash "$@"
