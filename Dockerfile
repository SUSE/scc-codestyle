FROM registry.opensuse.org/home/vpereirabr/dockerimages/containers/vpereirabr/rubyready:latest

RUN sudo gem update --system

WORKDIR /scc-codestyle
