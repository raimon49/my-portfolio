# my-portfolio

[![Build Status](https://travis-ci.org/raimon49/my-portfolio.svg?branch=master)](https://travis-ci.org/raimon49/my-portfolio)
[![Requirements Status](https://requires.io/github/raimon49/my-portfolio/requirements.svg?branch=master)](https://requires.io/github/raimon49/my-portfolio/requirements/?branch=master)
[![Dependency Status](https://www.versioneye.com/user/projects/5b00dec70fb24f0e5d514e02/badge.svg)](https://www.versioneye.com/user/projects/5b00dec70fb24f0e5d514e02)

My OSS activity portfolio

## Debugging

Run local server

```sh
$ mkdocs serve -a <IP:PORT>
```

## Manage dependencies

Update dependencies

```sh
$ pip-compile -U requirements.in
```

## Deployment

```sh
$ mkdocs gh-deploy --clean
```
