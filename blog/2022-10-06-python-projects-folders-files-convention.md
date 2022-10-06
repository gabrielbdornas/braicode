---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/2qifZzV.png
---

# My conventions to python projects, folders and file naming

As I started to build a [Python Project Template](https://github.com/gabrielbdornas/python-project-template) to boost my development process a really good question came up.
What's the naming convention in the Python community to set names for project folders (and subfolders) and files?
Should we use hyphens, underscores, or both?

[Google developer documentation style guide](https://developers.google.com/style/filenames) said that hyphens are the best option to separate words.

> Make file and directory names lowercase. Use hyphens, not underscores, to separate words—for example, query-data.html. Use only standard ASCII alphanumeric characters in file and directory names.
Don't use generic page names such as document1.html.

[PEP8](https://peps.python.org/pep-0008/#package-and-module-names) defines a standard for how to name packages and modules:

> Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves readability. Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.

This [Medium Post](https://medium.com/@maddendan/hyphens-vs-underscores-in-file-names-295025782912) suggests using both hyphens and underscores to split "entities" in file names.

But now, what to do?

My solution to choosing one pattern was to search how real python projects are built.
Just to show fill examples, the repositories [miss-islington](https://github.com/python/miss-islington), [flask-cors](https://github.com/corydolphin/flask-cors), and [frictionless-ckan-mapper](https://github.com/frictionlessdata/frictionless-ckan-mapper) share the same pattern suggested in [this StackOverflow post](https://stackoverflow.com/a/59896341/11755155):

- All lowercase.
- The repository should use the same name as the package, except that the repository substitutes hyphens for underscores.
- Only standard ASCII alphanumeric characters in file and directory names.

The suggested structure is shown below:

```
repository-name/
├── repository_name
│   ├── __init__.py
│   ├── __main__.py
├── README.md
```

Next steps? It's time to fully implement the convention in my [Python Project Template](https://github.com/gabrielbdornas/python-project-template), both in documentation and testing to ensure that it'll be applied.

## References

- [DTA convention discussion](https://github.com/dados-mg/issues/issues/57)

- [StackOverflow - Folder naming convention for python projects](https://stackoverflow.com/questions/52827722/folder-naming-convention-for-python-projects)