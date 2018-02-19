# ecsctl-docker

Dockerfile for the [ecsctl](https://github.com/cxmcc/ecsctl) tool.

## Run it

	docker run -it --rm outofcoffee/ecsctl [commands]

See [ecsctl](https://github.com/cxmcc/ecsctl) documentation for commands.

### Setting an alias

If you haven't already, set up your environment variables:

	export AWS_PROFILE=default
	export AWS_DEFAULT_REGION=eu-west-1

For better results, set up an alias:

	alias ecsctl='docker run -it --rm -e AWS_PROFILE -e AWS_DEFAULT_REGION -v $HOME/.aws/:/root/.aws/ outofcoffee/ecsctl'

Now you can run:
	
	ecsctl

For example:

	ecsctl describe task my-task --cluster somecluster

## Build it

	docker build --tag outofcoffee/ecsctl .
