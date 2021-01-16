install:
	npm ci

deploy:
	git push heroku master

update-deps:
	npx npm-check-updates -u
