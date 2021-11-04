#!/bin/bash

REPO=jkonecny12/presentation-github-self-hosted-runners
GITHUB_TOKEN=~/.config/github-token

podman run -h local-runner-1 --rm \
       -e GITHUB_TOKEN=$(< $GITHUB_TOKEN) \
       -e GITHUB_REPOSITORY=$REPO \
       -e RUNNER_LABELS=local \
       localhost/gh-presentation
