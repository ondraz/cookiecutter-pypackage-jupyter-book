# Contributing

Contributions are welcome and they are greatly appreciated! Every little bit
helps and credits will always be given.

You can contribute in many ways.

## Types of Contributions

### Report a Bugs

Report bugs via [GitHub Issues].

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.

### Fix Bugs

Look through the [GitHub Issues] for bugs. Anything tagged with "bug" and "help
wanted" is open to whoever wants to implement it.

### Implement Features

Look through the GitHub issues for features. Anything tagged with "enhancement"
and "help wanted" is open to whoever wants to implement it.

### Write Documentation

{{ cookiecutter.project_name }} could always use more documentation, whether as part of the
official {{ cookiecutter.project_name }} docs, in docstrings, or even on the web in blog posts,
articles, and such.

### Submit Feedback

The best way to send feedback is to file [GitHub Issues].

If you are proposing a feature:

* Explain in detail how it would work.
* Keep the scope as narrow as possible, to make it easier to implement.
* Remember that this is a volunteer-driven project, and that contributions
  are welcome :)

## Get Started!

Ready to contribute? Here's how to set up {{ cookiecutter.project_name }} for local development.

1. Fork the {{ cookiecutter.project_name }} [GitHub repo].
2. Clone your fork locally.
  ```console
  $ git clone git@github.com:{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.git
  ```
3. Ensure [poetry](https://python-poetry.org/docs/) is installed.
4. Install dependencies and start your virtualenv:
  ```console
  $ make install-dev
  ```
5. Create a branch for local development:
  ```console
  $ git checkout -b name-of-your-bugfix-or-feature
  ```
  Now you can make your changes locally.
6. When you're done making changes, check that your changes pass the
   tests, including testing other Python versions, with tox:
  ```console
  $ tox
  ```
7. Commit your changes and push your branch to GitHub:
  ```console
  $ git add .
  $ git commit -m "Your detailed description of your changes."
  $ git push origin name-of-your-bugfix-or-feature
  ```
8. Submit a pull request through the GitHub website.

## Pull Request Guidelines

Before you submit a pull request, check that it meets these guidelines:

1. The pull request should include tests.
2. If the pull request adds functionality, the docs should be updated. Put
   your new functionality into a function with a docstring, and add the
   feature to the list in README.md.
3. The pull request should work for Python 3.7, 3.8, 3.9 and for PyPI. Check
   https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/actions
   and make sure that the tests pass for all supported Python versions.

## Tips

{% if cookiecutter.use_pytest == 'y' -%}
```console
$ pytest tests.test_{{ cookiecutter.project_slug }}
```
{%- else -%}
```console
$ python -m unittest tests.test_{{ cookiecutter.project_slug }}
```
{%- endif %}

To run a subset of tests.

## Deploying

A reminder for the maintainers on how to deploy.
Make sure all your changes are committed (including an entry in HISTORY.md).
Then run:

```console
$ poetry patch # possible: major / minor / patch
$ git push
$ git push --tags
```

GitHub action will then deploy to PyPI if tests pass.

[GitHub Issues]: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/issues
[GitHub repo]: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}
