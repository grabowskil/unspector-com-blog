FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN command -v ssh-agent >/dev/null || ( apt-get update -y && apt-get install openssh-client -y ) \
    && eval $(ssh-agent -s) \
    && echo "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add - \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && git config --global user.email "grabowskil@users.noreply.github.com" \
    && git config --global user.name "CI Pipeline" \
    && brew install hugo
CMD sh deploy.sh
