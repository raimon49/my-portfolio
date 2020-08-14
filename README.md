# my-portfolio

[![Build Status](https://travis-ci.org/raimon49/my-portfolio.svg?branch=master)](https://travis-ci.org/raimon49/my-portfolio)
[![Requirements Status](https://requires.io/github/raimon49/my-portfolio/requirements.svg?branch=master)](https://requires.io/github/raimon49/my-portfolio/requirements/?branch=master)
[![Known Vulnerabilities](https://snyk.io/test/github/raimon49/my-portfolio/badge.svg)](https://snyk.io/test/github/raimon49/my-portfolio)

My OSS activity portfolio

## Setup

Ruby and Python 3 as system requirements

```sh
$ make setup
```

## Debugging

Run local server

```sh
$ mkdocs serve -a <IP:PORT>
```

## Manage dependencies

Update dependencies

```sh
$ pip-compile -U requirements.in

# Or use make target
$ make update-depends
```

## Deployment

```sh
$ mkdocs gh-deploy --clean

# Or use make target
$ make deploy
```
