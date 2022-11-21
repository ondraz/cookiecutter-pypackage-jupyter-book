# created with `cookiecutter https://github.com/ondraz/cookiecutter-pypackage`

help:
	@echo "available commands:"
	@echo " - install					: installs all requirements to run lambda functions"
	@echo " - install-dev					: installs all test and dev requirements including utmlp cli"
	@echo " - check					: runs tests using tox"
	@echo " - clean					: cleans up folders"
	@echo " - develop-book					: sets auto-refresh of a jupyter book documentation using entr"


install:
	poetry update
	poetry install

install-dev: install
	python -m pip install --upgrade pip
	poetry install -E dev -E test -E doc
	poetry run ipython kernel install --user --name={{ cookiecutter.project_slug }}
	poetry run pre-commit autoupdate
	poetry run pre-commit install


check:
	tox

clean:
	rm -rf build site .eggs book/_build dist .tox {{ cookiecutter.project_slug }}/__pycache__
	rm -rf {{ cookiecutter.project_slug }}/plotly_theme/__pycache__ tests/__pycache__


# regenerate the book every time there is a change in source files
develop-book:
	source .venv/bin/activate \
	&& find book -path book/_build -prune -false -o \( -name '*.ipynb' -o -name '*.md' -o -name '*.yml' \) \
	| entr jupyter-book build book
