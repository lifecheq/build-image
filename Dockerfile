FROM circleci/clojure:lein-2.8.1-node-browsers

MAINTAINER LifeCheq

USER root

RUN npm install --silent --global \
    karma-cli \
    firebase-tools

USER circleci

RUN npm install --silent --save-dev \
    karma \
    karma-cljs-test \
    karma-chrome-launcher

RUN curl -sL https://sentry.io/get-cli/ | bash
