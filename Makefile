.PHONY: install check

install:
	npm install -here @salesforce-ux/design-system --save
	- cp -r node_modules/@salesforce-ux/design-system/assets assets

check:
	- composer validate --no-check-all --strict
	- prettier --write *.yml
	- prettier --write templates/patterns/*/*.yml
	- twig-lint lint templates/
