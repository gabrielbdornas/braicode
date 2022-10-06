---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/2qifZzV.png
---

# My conventions to python projects, folders and file naming

As I started to build a [Python Project Template](https://github.com/gabrielbdornas/python-project-template) to booster my development process a real good question came up.
What's the naming convention in python community to set names for projects folders (and sub folders) and files?
Should we use hyphens, underscores or both?

[Google developer documentation style guide](https://developers.google.com/style/filenames) found said that hyphens is the best option.

[PEP8](https://peps.python.org/pep-0008/#package-and-module-names) defines a standard for how to name packages and modules:

> Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves readability. Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.

This [Medium Post](https://medium.com/@maddendan/hyphens-vs-underscores-in-file-names-295025782912) suggest to use both hyphens and underscores to split "entities" in file names.

My solution to pick one pattern to use?
See how python projects are build.
Just to show fill examples, the repositories [miss-islington](https://github.com/python/miss-islington), [flask-cors](https://github.com/corydolphin/flask-cors) and [frictionless-ckan-mapper](https://github.com/frictionlessdata/frictionless-ckan-mapper) share the same pattern suggested in [this stackoverflow post](https://stackoverflow.com/a/59896341/11755155):

- All lowercase.
- The repository should use the same name as the package, except that the repository substitutes dashes (-) for underscores (_).

Or the same structure showed below:

```
repository-name/
├── repository_name
│   ├── __init__.py
│   ├── __main__.py
├── README.md
```


## References

- [DTA convention discussion](https://github.com/dados-mg/issues/issues/57)

- [Stackoverflow - Folder naming convention for python projects](https://stackoverflow.com/questions/52827722/folder-naming-convention-for-python-projects)