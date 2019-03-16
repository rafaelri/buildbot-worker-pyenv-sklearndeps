FROM rafaelri/buildbot-worker-pyenv
USER root
RUN apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h
USER buildbot
