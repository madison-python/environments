---
title: Just python environments
author: Pierce Edmiston
---

# Developer environments

**What is the purpose of developer tooling?**

To improve our ability to collaborate and deliver software products[^nojs].

- version control
- tests
- package managers
- build tools

[^nojs]: and not to write in JavaScript.

# Just developer environments

_A Theory of Justice_ by John Rawls

\vspace{1em}

> Society should be structured so that the greatest possible amount of
> liberty is given to its members --
> [Wikipedia](https://en.wikipedia.org/wiki/A_Theory_of_Justice)

# Stepping behind the veil of ignorance

What would you expect of your tools if you weren't sure of what you were
building?

- version control
- tests
- package managers
- build tools
- **open source**

# Tooling for flow

Tooling shouldn't slow development!

1. Tools should improve collaboration
1. Tools should make it easy to switch contexts
1. **Tools should be easy to configure on a new computer**

# Congratulations!

```
Your laptop passed away last night. Here is your new
computer.

> You received `1 macOS Mojave`.
```

# Captain's Log

[madison-python/environments/log.md](https://github.com/madison-python/environments/master/log.md)

# Python development tools

**pyenv**
:   Python version manager. Installs different distributions of python.
    cf. rbenv in ruby, nvm in node

**pipenv**
:   Python virtualenv manager. Installs Python packages with pip in
    different project environments. Uses Pipfile/Pipfile.lock.
    cf. Gemfile/Gemfile.lock, package.json/yarn.lock

**pytest**
:   Python test runner and framework.

# pyenv basics

```bash
pyenv install --list | less
pyenv install --list | grep 3.8
pyenv install 3.8-dev  # error 1
pyenv install 3.7.3    # error 2
pyenv install anaconda3-2019.03  # ...
pyenv local 3.7.3  # creates .python-version
pyenv global 3.7.3 # creates ~/.pyenv/version
```

# pipenv basics

```bash
pipenv install --python 3.7.3
pipenv install flask
pipenv install jinja2==2.10.1
pipenv install --dev pytest
```

# pipenv gotchas

1. pipenv + visual-studio-code
1. pipenv install "typo"

# Live demo

Roman numeral conversion as a Service (RaaS)

- Write a library function `roman_to_number` that takes in a roman numeral and returns a number.
- Deploy it as an API web service.

# Test-driven development

**Red-green-refactor**

- Can't write any production code until you have a failing test.
- Can't write more production code than is required to pass the test.
- Can't refactor in a way that adds functionality.