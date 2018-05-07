export FORCE_COLOR = true

ci: lint
precommit: lint-staged

lint:
	./node_modules/.bin/eslint .
lint-staged:
	./node_modules/.bin/lint-staged
