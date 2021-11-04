FROM registry.fedoraproject.org/fedora:35
LABEL maintainer=jkonecny@redhat.com

# Prepare environment and install build dependencies
RUN set -e; \
  dnf update -y; \
  dnf install -y \
  libicu \
  curl; \
  dnf clean all

# see https://github.com/martinpitt/anaconda/settings/actions/add-new-runner
RUN mkdir actions-runner && cd actions-runner && \
  URL_BASE=https://github.com/actions/runner/releases && \
  LATEST_VER=$(basename $(curl -Ls -o /dev/null -w '%{url_effective}' $URL_BASE/latest)) && \
  curl -L "$URL_BASE/download/$LATEST_VER/actions-runner-linux-x64-${LATEST_VER#v}.tar.gz" | tar xvz

COPY ["github-action-run-once", "/"]

ENTRYPOINT "/github-action-run-once"
