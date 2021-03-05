# docker-sceptre

![build](https://github.com/craighurley/docker-sceptre/workflows/build/badge.svg)

Run `sceptre` in a container.

## Running

```sh
docker run --rm -it -v $HOME/.aws:/root/.aws:ro -v $PWD:/workdir:ro craighurley/sceptre
```

Optional: create an alias for the container:

```sh
alias sceptre='docker run --rm -it -v $HOME/.aws:/root/.aws:ro -v $PWD:/workdir:ro craighurley/sceptre'
```

## Custom Hooks and Resolvers

The following custom hooks have been added to this container:

### Hooks

- <https://github.com/sceptre/sceptre-stack-termination-protection-hook>

### Resolvers

- <https://github.com/craighurley/sceptre-myip-resolver>
- <https://github.com/lukeplausin/sceptre-resolver-cmd>
- <https://github.com/sceptre/sceptre-date-resolver>
- <https://github.com/sceptre/sceptre-file-resolver>
- <https://github.com/sceptre/sceptre-kms-resolver>
- <https://github.com/sceptre/sceptre-ssm-resolver>

## Links

- <https://github.com/sceptre/sceptre>
