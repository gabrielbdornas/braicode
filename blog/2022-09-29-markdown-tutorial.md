---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/RTgk3lS.png
---

# Why Everybody Should Master Markdown

Markdown is a markup language for writing simple formatted documents without having to use a [Graphical User Interface - GUI](https://en.wikipedia.org/wiki/Graphical_user_interface) to designate text as bold, italics, etc. 
This is great for writing documents quickly without losing time reaching for a mouse and writing formatted content across many platforms in a standard way.

Use Cases for Markdown:

- Can be used to write documentation on [GitHub](https://github.com) and similar platforms like [HackMD - Online Markdown Editor](https://hackmd.io/);
- Can be used in slack/discord messages to quickly create code snippets and bold text;
- Can be used in writing content on collaboration tools like Notion/Trello/Asana;
- Can be used in notetaking apps like Boostnote and Obsidian;
- Can be used to format text on social networks like reddit; and
- Can be used for content writing with most static site generators, as [livemark](https://livemark.frictionlessdata.io/), used in this blog

In review, learning how to write content using markdown is a skills that opens up new possibilities in the tools you are probably already using making your life easier and more productive.
You can even use HTML if you're not sure how to do something with markdown.

## How to Write Markdown

Whether in a `.md` file or on any of the previously mentioned platforms that support markdown, all you have to do is just start writing markdown and it will just work for the [basic syntax](https://www.markdownguide.org/basic-syntax).

### Heading

There are six sizes of headings.

# Heading Level 1
##  Heading Level 2
###  Heading Level 3
####  HEADING LEVEL 4
#####  Heading Level 5
######  Heading Level 6

This is as simple as writing the following:

```
# Heading Level 1
## Heading Level 2
### Heading Level 3
#### Heading Level 4
##### Heading Level 5
###### Heading Level 6
```

```yaml remark
type: success
text: That nice code-block above is done by wrapping text in three backticks (```) before and after the code-block.
```

### Bold and italic text

Bold italic are written by wrapping text in asterisks, two for bold and one for italic respectively:

```
How about some **bold** or *italic* text?
```

And the result will be:

How about some **bold** or *italic* text?

### URL links

URL links are created using `[]()` sintaxe:

```
[Gabriel Dornas Github Account](https://github/gabrielbdornas)
```
And the result will be:

[Gabriel Dornas Github Account](https://github/gabrielbdornas)

### Images

Images are created using `![]()` sintaxe, pretty similar to URL links, isn't it:

```
![Markdown Image](https://imgur.com/RTgk3lS.png)
```

Inside the parentheses we have to pass the image link or local address. 

And the result will be:

![Markdown Image](https://imgur.com/RTgk3lS.png)

```yaml remark
type: success
text: https://imgur.com/ is a good place to host online images.
```

### Extended Markdown

As you can see, the basic syntax have many of the elements needed on a day-to-day basis, but it wasn’t enough for some people. 
That’s where [extended syntax](https://www.markdownguide.org/extended-syntax/#fnref:bignote) comes in.
Not all Markdown applications support extended syntax elements. 
A good example of this is table syntax. They are written like so…

```
|   Column 1  |   Column 2  |
|-------------|-------------|
| Some Info 1 | More Info 1 |
| Some Info 2 | More Info 2 |
| Some Info 3 | More Info 3 |
```

And the result will be:

| Column 1 | Column 2 |
|----------|----------|
| Some Info | Some Info 2 |
| More Info | More Info 2 |
| More Info | More Info 2 |

You will need to check whether or not the lightweight markup language your application is using supports the extended syntax elements you want to use.
If it doesn’t, it may still be possible to enable extensions in your Markdown processor.

## Conclusion

Markdown is very easy to use and its portability and convenience can help maximize your productivity!
Most of the time, the basic syntax will be enough, but if necessary, check out the Extended Markdown syntax and its extensions installation.
