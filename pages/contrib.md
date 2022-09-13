# Contribute

I'm glad you'd like to contribute! This is an open project, and I value contributions from everyone.

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

As default all pages of the project lives on `pages` and `blog` folders. To build the entire site just run:

```
$ make build
```

To test it in your local environment run:

```
$ make start
```

It'll start a local server on `http://localhost:7000`

The project is deployed automatically to GitHub Pages on every push to "main". That means that in production it will automatically be deployed every time there is a change approved from a Pull Request.

## Blog Images

We're using [imgur website](https://imgur.com/) to host our images, specially from the blog post section.