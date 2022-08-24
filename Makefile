REPO_NAME:=$(shell basename -s .git `git remote get-url origin`)
VENV_NAME:='venv/$(REPO_NAME)'
DEPENDS:='requirements'

.DEFAULT_GOAL:=help
.PHONY: help
help:
	@echo 'Usage: make <subcommand>'
	@echo ''
	@echo 'Subcommands:'
	@echo '    setup          Setup for venv'
	@echo '    test           Lint for Markdown'
	@echo '    update-depends Re-compile requirements for venv'
	@echo '    preview        Preview pages on local server'
	@echo '    deploy         Release to GitHub Pages'

.PHONY: setup
setup:
	test -d $(VENV_NAME) || python -m venv $(VENV_NAME)
	$(VENV_NAME)/bin/python -m pip install -r $(DEPENDS).txt
	bundle install --path vendor/bundle

.PHONY: test
test:
	bundle exec mdl -c mdlrc -s my-portfolio-style.rb docs

.PHONY: update-depends
update-depends:
	pip-compile -U $(DEPENDS).in

.PHONY: preview
preview:
	mkdocs serve --no-livereload

.PHONY: deploy
deploy:
	mkdocs gh-deploy --clean
