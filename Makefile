venv:
	python -m venv venv
	source venv/bin/activate
	python -m pip install --upgrade pip
	pip install --upgrade pip-tools

install: 
	pip-sync requirements.txt

update:
	pip-compile requirements.in -q --strip-extras --upgrade
	make install
