# Demo of an attack with pull_request_target trigger

In this example user could be attacked by the contributor by changing the code which is then 
executed with a full privilege thanks to the pull_request_target trigger. Attacker can't
change the workflow file but can use power of the repository GITHUB_TOKEN.

## Potential attack

Attacker can commit, change history and use GitHub API to change the repository other ways.

## Setup

See `main` branch for how to connect your local runner.
