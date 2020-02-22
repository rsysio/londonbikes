
.PHONY: build
build:
	docker build -t londonbikes .

.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: search
search:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes search east; echo $$?

.PHONY: loc
loc:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes search 51.53 -0.09 250; echo $$?

.PHONY: id
id:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes id BikePoints_50; echo $$?

.PHONY: fail
fail:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes id BikePoints_5088888; echo $$?

.PHONY: help
help:
	@docker run --rm londonbikes help
