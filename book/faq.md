# FAQ

## Why GitHub Workflow `release & publish` Failed?
We have used a github action `heinrichreimer/github-changelog-generator-action` to
generate change log automatically for your project. However, this action requires
some configuration.

Goto `.github/workflows/release.yml` (in your project folder), find the following:

```
- name: generate change log
uses: heinrichreimer/github-changelog-generator-action@v2.1.1
with:
    token: ${{ secrets.GITHUB_TOKEN }}
    issues: true
    issuesWoLabels: true
    pullRequests: true
    prWoLabels: true
    unreleased: true
    addSections: '{"documentation":{"prefix":"**Documentation:**","labels":["documentation"]}}'
    #sinceTag: v0.1.1
    output: CHANGELOG.md
```
uncomment `#sinceTag` line and given an existed tag name in your project. If
there's none, you have to create one now.

## Why not Travis CI?
Travis CI is a great service, however, GitHub actions are super convenient, less configuration,
better integration. Less configuration, less error prone.

## Why not Read the Docs?
Same reason as above. GitHub pages are more convenient than [Read the Docs](https://readthedocs.org/),
it requires no further configuration. As to Read the Docs, you need to
write v2 config file, plus several settings on web pages.

## Why Sphinx over MkDocs?
Jupyter Book runs on top of powerful [Sphinx](https://www.sphinx-doc.org/en/master/)
and integrates greatly with Jupyter notebooks.
Jupyter notebook integration is the main reason we chose sphinx over otherwise very productive mkdocs.

## What are the configuration items?

**Templated Values**
The following appear in various parts of your generated project.

1. `full_name` - Your full name.
1. `email` - Your email address.
1. `github_username` - Your GitHub username.
1. `project_name` - The name of your new Python package project. This is used in
documentation, so spaces and any characters are fine here.
1. `project_slug` - The namespace of your Python package. This should be Python
import-friendly. Typically, it is the slugified version of
project_name.
1. `project_short_description` - A 1-sentence description of what your Python package does.
1. `release_date` - The date of the first release.
1. `pypi_username` - Your Python Package Index account username.
1. `year` - The year of the initial package copyright in the license file.
1. `version` - The starting version number of the package.
1. `install_precommit_hooks` - If you choose yes, then cookiecutter will install pre-commit hooks for you.
1. `docstrings_style` - one of `google, numpy, rst`. It's required by flake8-docstrings.

**Options**
The following package configuration options set up different features
for your project.

1. `command_line_interface` - Whether to create a console script using Python Fire. Console script
entry point will match the project_slug. Options: `'fire'`, `'No
command-line interface'`.

Except above settings, for CI/CD, you'll also need configure GitHub repository secrets
at page repo > Settings > Secrets, and add the following secrets:

* `TEST_PYPI_API_TOKEN` (required for publishing dev release to testpypi)
* `PYPI_API_TOKEN` (required for publish )
