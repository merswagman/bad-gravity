APP_NAME=bad-gravity
PORT=80

build: ## Build the container
	docker build -t $(APP_NAME) .

run: ## Run container on port configured in `config.env`
	docker run --detach -p=$(PORT):$(PORT) --name="$(APP_NAME)" $(APP_NAME)

run-attached: ## Run container on port configured in `config.env`
	docker run -p=$(PORT):$(PORT) --name="$(APP_NAME)" $(APP_NAME)

up: build run 

stop: ## Stop and remove a running container
	docker stop $(APP_NAME); docker rm $(APP_NAME)

all: stop build run
