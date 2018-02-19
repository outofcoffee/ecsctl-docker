# ecsctl-docker

Dockerfile for the [ecsctl](https://github.com/cxmcc/ecsctl) tool.

## Build it

	docker build --tag ecsctl .

## Run it

	docker run -it ecsctl

For better results, set up an alias with some environment variables:

	alias ecsctl='docker run -it -e AWS_PROFILE -e AWS_DEFAULT_REGION -v $HOME/.aws/:/root/.aws/ ecsctl'

If you haven't already, set up your environment variables:

	export AWS_PROFILE=default
	export AWS_DEFAULT_REGION=eu-west-1

Now you can run:
	
	ecsctl

See [ecsctl](https://github.com/cxmcc/ecsctl) documentation for commands.

e.g.

	ecsctl describe task my-task --cluster somecluster
