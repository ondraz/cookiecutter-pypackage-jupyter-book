# v1.0

***first release with the following features:***

1. [Poetry]: Manage version, dependancy, build and release
2. [Jupyter Book]: Writting your docs in markdown and jupyter notebooks
3. Testing with [Pytest] (unittest is still supported out of the box)
4. Code coverage report and endorsed by [Codecov]
* [Tox]: Test your code against environment matrix, lint and artifact check.
* Format with [Black] and [Isort]
* Lint code with [Flake8] and [Flake8-docstrings]
* [Pre-commit hooks]: Formatting/linting anytime when commit/run local tox/CI
* Command line interface using [Python Fire] (optional)
* Continuous Integration/Deployment by [GitHub actions], includes:
    - publish dev build/official release to TestPyPI/PyPI automatically when CI success
    - publish documents automatically when CI success
    - extract change log from GitHub and integrate with release notes automatically
* Host your documentation from [Git Pages] with zero-config

[poetry]: https://python-poetry.org/
[Jupyter Book]: https://jupyterbook.org/
[pytest]: https://pytest.org
[codecov]: https://codecov.io
[tox]: https://tox.readthedocs.io
[black]: https://github.com/psf/black
[isort]: https://github.com/PyCQA/isort
[flake8]: https://flake8.pycqa.org
[flake8-docstrings]: https://pypi.org/project/flake8-docstrings/
[Python Fire]: https://github.com/google/python-fire
[github actions]: https://github.com/features/actions
[Git Pages]: https://pages.github.com
[Pre-commit hooks]: https://pre-commit.com/
