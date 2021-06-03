FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN echo $SSH_PRIVATE_KEY
RUN brew install hugo
CMD sh deploy.sh
