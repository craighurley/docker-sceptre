# docker-sceptre

![Build and Publish to Docker Hub](https://github.com/craighurley/docker-sceptre/workflows/Build%20and%20Publish%20to%20Docker%20Hub/badge.svg)

Run `sceptre` in a container.

## Running

```sh
docker run --rm -v $HOME/.aws:/root/.aws:ro -v $PWD:/workdir:ro craighurley/sceptre
```

Optional: create an alias for the container:

```sh
alias sceptre='docker run --rm -v $HOME/.aws:/root/.aws:ro -v $PWD:/workdir:ro craighurley/sceptre'
```

## Custom Hooks and Resolvers

The following custom hooks have been added to this container:

### Hooks

- <https://github.com/craighurley/sceptre-terminationprotection-hook>

### Resolvers

- <https://github.com/craighurley/sceptre-myip-resolver>
- <https://github.com/sceptre/sceptre-date-resolver>
- <https://github.com/sceptre/sceptre-kms-resolver>
- <https://github.com/sceptre/sceptre-ssm-resolver>

## Links

- <https://github.com/cloudreach/sceptre>
