FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /unspector-com-blog
RUN brew install hugo
CMD cd unspector-com-blog \
    && hugo -D \
    && sh deploy.sh