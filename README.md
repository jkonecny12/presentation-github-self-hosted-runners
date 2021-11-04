# Tooling for OpenAlt presentation about self-hosted runners
Tools for presentation on OpenAlt about GitHub self-hosted runners

# How to use this

1. Build a container:

```podman build -t gh-presentation .```

2. Generate token on [GitHub](https://github.com/settings/tokens) and save this token to `~/.config/github-token`.
3. Edit `launch_local_runner.sh` file and set your repository for testing.
4. Launch container by `./launch_local_runner.sh`.
