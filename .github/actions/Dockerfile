FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN apt-get update -y && apt-get install openssh-client -y \
    && eval $(ssh-agent -s) \
    && ssh-add $SSH_PRIVATE_KEY \
    && mkdir -p ~/.ssh \
    && chmod 700 ~/.ssh \
    && git config --global user.email "grabowskil@users.noreply.github.com" \
    && git config --global user.name "CI Pipeline"
RUN brew install hugo
CMD sh deploy.sh
