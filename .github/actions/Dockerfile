FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
# COPY $GITHUB_WORKSPACE /
# RUN brew install hugo
# CMD sh deploy.sh
CMD eval $(ssh-agent -s) \
    && echo "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add -
