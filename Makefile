VENV_NAME?='venv/my-portfolio'
DEPENDS='requirements'

.DEFAULT_GOAL:=help
.PHONY: help
help:
	@echo 'Usage: make <subcommand>'
	@echo ''
	@echo 'Subcommands:'
	@echo '    setup          Setup for venv'
	@echo '    test           Lint for Markdown'
	@echo '    update-depends Re-compile requirements for venv'
	@echo '    deploy         Release to GitHub Pages'

.PHONY: setup
setup:
	test -d || python -m venv $(VENV_NAME)
	$(VENV_NAME)/bin/python -m pip install -r $(DEPENDS).txt
	bundle install --path vendor/bundle

.PHONY: test
test:
	bundle exec mdl -c mdlrc -s my-portfolio-style.rb docs

.PHONY: update-depends
update-depends:
	pip-compile -U $(DEPENDS).in

.PHONY: deploy
deploy:
	mkdocs gh-deploy --clean
