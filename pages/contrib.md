# Contribute

Welcome! I'm happy you'd like to contribute! This is an open project, and I value contributions from everyone.

GitHub is our code and issues hosting platform. To report a bug or propose a new feature, please open an [issue](https://github.com/gabrielbdornas/braicode/issues). For pull requests, I would ask you initially create an issue and then create a pull requests linked to this issue.

## Setup

To start working on the project clone the repository and enter its directory:

```bash
$ git clone git@github.com:gabrielbdornas/braicode.git
$ cd braicode
```

Create a virtual environment (optional):

```bash
# On linux machine
$ python3 -m venv venv
$ source venv/bin/activate

# On windows machine
$ python -m venv venv
$ source venv/Scripts/activate
```

And install dependencies:

```
$ pip install -r requirements.txt
```

## Deploy

As default all pages of the project lives on `pages` and `blog` folders. To build an `html` page based on a brand new `markdown` use `livemark build` command. To automate this process, after writing a new page I also include its build process on `build.sh` executable file (always above "Starting server..." comment):

```
livemark build pages/new_page.md --target pages/new_page.html && \

# Starting server...
...
```

To test it in your local environment run:

```
$ ./build.sh
```

It'll build all your pages and start a local server on `http://localhost:7000`

The project is deployed automatically to GitHub Pages on every push to "main". That means that in production it will automatically be deployed every time there is a change approved from a Pull Request.