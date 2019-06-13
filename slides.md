---
title: Just python environments
author: Pierce Edmiston
output:
  beamer_presentation:
    theme: metropolis
---

# Developer environments

What is the purpose of developer tooling?
:   To improve our ability to collaborate and deliver software products[^nojs].

- version control
- tests
- package managers
- build tools

[^nojs]: and not to write in JavaScript.

# Just developer environments

_A Theory of Justice_ by John Rawls

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

Your laptop passed away last night. Here is your new
computer.

> You received `1 macOS Mojave`.

# Captain's Log

[madison-python/environments/log.md](https://github.com/madison-python/environments/log.md)

# Python development tools

**pyenv**
:   Python version manager. Installs different distributions of python.
    cf. rbenv in ruby, nvm in node

**pipenv**
:   Python virtualenv manager. Installs Python packages with pip in
    different project environments. Uses Pipfile/Pipfile.lock.
    cf. Gemfile/Gemfile.lock, package.json/yarn.lock

**pytest**
:   Python test runner and framework. Install with pip

# Live demo
