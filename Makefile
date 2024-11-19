venv:
	python -m pip install --upgrade pip
	python -m pip install pip-tools
	python -m venv venv
	source venv/bin/activate

install: 
	pip-sync requirements.txt

update:
	pip-compile requirements.in -q --strip-extras
	make install
