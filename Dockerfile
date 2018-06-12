FROM alpine:3.6

WORKDIR /home
ENV HOME /home
EXPOSE 8000/tcp
VOLUME /home/db

RUN apk update \
    && apk add python3
    
# py3-pip make git gcc autoconf automake libtool libc-dev python2-dev

COPY requirements.txt /home/

RUN python3 -m pip \
    --disable-pip-version-check \
    --no-cache-dir \
    install -r requirements.txt

COPY beercounter/ /home/beercounter/
COPY beeromat/ /home/beeromat/
COPY manage.py /home/

CMD ["./manage.py", "runserver", "0.0.0.0:8000"]