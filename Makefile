install:
	poetry update
	poetry install

install-dev: install
	poetry install -E dev
	poetry run ipython kernel install --user --name=cookiecutter-pypackage
	poetry run pre-commit install

check:
	tox

clean:
	rm -rf build site .eggs book/_build dist .tox

# regenerate the book every time there is a change in source files
develop-book:
	source .venv/bin/activate \
	&& find book -path book/_build -prune -false -o \( -name '*.ipynb' -o -name '*.md' -o -name '*.yml' \) \
	| entr jupyter-book build book
