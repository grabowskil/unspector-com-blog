FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN brew install hugo
CMD eval $(ssh-agent -s) \
    && echo "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add - \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && git config --global user.email "grabowskil@users.noreply.github.com" \
    && git config --global user.name "unspector ci bot" \
    && ssh-keyscan -H github.com >> ~/.ssh/known_hosts \
    && sh deploy.sh
