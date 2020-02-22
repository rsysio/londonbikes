
build:
	docker build -t londonbikes .

install:
	pip install -r requirements.txt

search:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes search east; echo $$?

loc:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes search 51.53 -0.09 250; echo $$?

id:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes id BikePoints_50; echo $$?

fail:
	@docker run \
		--rm \
		-e TFL_APP_ID=${TFL_APP_ID} \
		-e TFL_API_KEY=${TFL_API_KEY} \
		londonbikes id BikePoints_5088888; echo $$?
