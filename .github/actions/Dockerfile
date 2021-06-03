FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
RUN brew install hugo
CMD git config --global url.”https://gitaction:$TOKEN@github.com/".insteadOf “https://github.com/" \
    && git config --global user.email "grabowskil@users.noreply.github.com" \
    && git config --global user.name "CI Pipeline" \
    && sh deploy.sh