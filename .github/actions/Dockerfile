FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN brew install hugo \
    && git fetch \
    && git pull \
    && hugo -D
CMD sh deploy.sh