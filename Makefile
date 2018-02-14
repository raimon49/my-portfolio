DEPENDS='requirements'

.DEFAULT: help
.PHONY: help
help:
	@echo 'Usage: make <subcommand>'
	@echo ''
	@echo 'Subcommands:'
	@echo '    setup          Setup for venv'
	@echo '    update-depends Re-compile requirements for development'
	@echo '    deploy         Release to GitHub Pages'

.PHONY: setup
setup:
	pip install -r $(DEPENDS).txt

.PHONY: update-depends
update-depends:
	pip-compile -U $(DEPENDS).in

.PHONY: deploy
deploy:
	mkdocs gh-deploy --clean
