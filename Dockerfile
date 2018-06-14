FROM circleci/clojure:lein-2.8.1-node-browsers

MAINTAINER LifeCheq

USER root

RUN npm install --silent --global \
    karma-cli \
    firebase-tools

USER circleci

RUN curl -sL https://sentry.io/get-cli/ | bash

RUN echo '(defproject dummy "" :dependencies [[lein-cljsbuild "1.1.7"]])' > project.clj \
  && lein deps && rm project.clj