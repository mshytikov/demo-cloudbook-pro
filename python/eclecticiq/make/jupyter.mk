.PHONY: jupyter-%

jupyter-start:
	COMPOSE_OPTIONS="-e USER=$$USER -e UID=$$UID -e GID=$${GROUPS[0]}" \
	docker-compose -f jupyter/docker-compose.yaml up

jupyter-stop:
	COMPOSE_OPTIONS="-e USER=$$USER -e UID=$$UID -e GID=$${GROUPS[0]}" \
	docker-compose -f jupyter/docker-compose.yaml stop

jupyter-setup:
	COMPOSE_OPTIONS="-e USER=$$USER -e UID=$$UID -e GID=$${GROUPS[0]}" \
	docker-compose -f jupyter/docker-compose.yaml run --rm app ./bin/setup
