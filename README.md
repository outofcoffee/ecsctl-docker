# ecsctl

## Build it

	docker build --tag ecsctl .

## Run it

	docker run -it ecsctl

For better results, set up an alias with some environment variables:

	alias ecsctl='docker run -it -e AWS_PROFILE -e AWS_DEFAULT_REGION=eu-west-1 -v $HOME/.aws/:/root/.aws/ ecsctl'

Now you can run:

	ecsctl

e.g.

	ecsctl describe task my-task --cluster somecluster
