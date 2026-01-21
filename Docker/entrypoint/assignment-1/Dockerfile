FROM alpine

RUN apk update && \
    apk add --no-cache cmatrix && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "cmatrix" ]    
CMD [ "-abc", "-C", "green" ]
