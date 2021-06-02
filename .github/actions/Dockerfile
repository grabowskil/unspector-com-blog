FROM klakegg/hugo:latest
LABEL Name=unspectorcomblog Version=0.0.1
RUN git clone git@github.com:grabowskil/unspector-com-blog.git \
    && cd unspector-com-blog \
    && hugo -D
CMD cd unspector-com-blog \
    && sh ./deploy.sh
