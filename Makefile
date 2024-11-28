SHELL := /bin/bash

venv:
	python -m venv venv;
	source venv/bin/activate;
	python -m pip install --upgrade pip;
	pip install --upgrade pip-tools;

install: venv
	pip-sync requirements.txt;

update: venv
	pip-compile requirements.in -q --strip-extras --upgrade;
	make install;
