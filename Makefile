VENV = .venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

.PHONY: install test lint format run clean

install:
	$(PIP) install -r requirements.txt

test:
	$(VENV)/bin/pytest -v

lint:
	$(VENV)/bin/pylint --ignore=.venv,__pycache__,.git .

format:
	$(VENV)/bin/black .

run:
	$(PYTHON) hello.py

clean:
	rm -rf __pycache__ .pytest_cache