FROM linuxbrew/brew:latest
LABEL Name=unspectorcomblog Version=0.0.1
COPY $GITHUB_WORKSPACE /
# RUN brew install hugo
CMD git fetch \
    && git pull --recurse-submodules \
    && cd themes/hugo-theme-cleanwhite-rsy/ && ls -a \
    && ls -a layouts/_default