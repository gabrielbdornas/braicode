# Strings

In this tutorial, you're going to learn more about Python strings.
Python strings are sequences of characters and numbers.
Strings are usually created using single, double or triple quotes. Let’s take a look!

````python
my_string = "Welcome to Python!"
another_string = 'The bright red fox jumped the fence.'
a_long_string = '''This is a
multi-line string. It covers more than
one line'''
````

**The triple quoted line can be done with three single quotes or three double quotes**. 
This way, they allow the programmer to write strings over multiple lines. 
If you print it out, you will notice that the output retains the line breaks. 

If you need to use single quotes in your string, then wrap it in double quotes.
Here's an example: imagine you wanted to create the string _Python's course for Beginners_.
To do that we need to add an apostrophe, like this:

````python
course = 'Python's course for Beginners'
````

```
File "<stdin>", line 1
    course = 'Python's course for Beginners'
                     ^
SyntaxError: invalid syntax
```

Above the "invalid syntax" error shows that our string starts in 'P' and then terminates in 'n'.
All these characters that we have here after the second apostrophe (_s course for Beginners_) Python interpreter doesn't know what they are.
To solve this problem, we need to use double quotes to define our string, than we can have a single quote in the middle of it.

```python script
course = "Python's course for Beginners"
print(course)
```

```yaml remark
type: primary
text: If you need single quotes inside a string use doble quotes to define it, but if you need doble quotes inside a string define it using single ones. The same logic is applied to the triple quoted lines.
```

## String Indexing and Slicing

Now, let's look at other characteristics of strings in Python.
I'm going to set the course variable name to _Python for Beginners_ and use square brackets to get the first character of it.
To do that we use square brackets and type _0_:

````python script
course = 'Python for Beginners'
print(course[0])
````

Here, the **index** of the first character in this string is _0_.
In other words, this is how Python strings are indexed: _0, 1, 2, 3_, etc.
So, the index of the first character is _0_, the index of the second is _1_, and so on.

```yaml remark
type: primary
text: Python is zero-based
```

We can also use a negative index to get the characters started from the end.
Passing negative 1 here, assuming that _0_ is the first character, negative 1 is the last character.
When we run this program we shoul see _s_:

````python script
course = 'Python for Beginners'
print(course[-1])
````

If we pass negative 2, this will return the second character from the end (_r_).

We can also use a similar sintax to extract a few characters instead of one character and this is called slicing.
For example, if we type:

````python script
course = 'Python for Beginners'
print(course[0:3])
````

Python interpreter will return all the characters starting with _0_ all the way to _3_, but it does not return the character at the index _3_.

We also have default values for the start and end index.
If we don't supply the end index, Python will return all the characters to the end of the string:

````python script
course = 'Python for Beginners'
print(course[0:])
````

But if you change the start index to _1_, this will exclude the first character:

````python script
course = 'Python for Beginners'
print(course[1:])
````

Similarly, we have a default value for the start index. 
If we don't supply it, and add and end index like _5_, Python will assume _0_ as the start index:

````python script
course = 'Python for Beginners'
print(course[:5])
````

But, what if we leave both the start and the end index?
In this case _0_ will be assumed as the start index and the lenght of the string will be assumed as the end index.
In resume, this syntax will basically copy or clone a string:

````python script
course = 'Python for Beginners'
print(course[:])
````

Now, here's a little exercise for you:
Define a variable, called _name_, and set it to _Jane_.
Use _1_ in start index and _-1_ in end index.
What do you think we're going to see on the terminal?
Before checking it out below try to do it yourself.

````python script
course = 'Jane'
print(course[1:-1])
````

Pay close attention to this square brackets syntax, because quite often it's the topic for online Python tests or university exams, besides I've been surprised how often I have needed to know how to do this in my day-to-day job.

## Formatted Strings

Formatted strings are particularly useful in situations where you dynamically generate some text with your variables.
Let's say we have two variables:
````python
first_name = 'Jane'
last_name = 'Joplin'
````
What if we want to generate some text with these two variables, like this:
````python
first_name = 'Jane'
last_name = 'Joplin'
Jane [Joplin] was a singer
````
How we do this?
We define another variable like _message_, add the first name and concatenate this with a string that contains a space and a sqare bracket.
Next, we need to add a last name, then we need to add a string that contains the closing square brackets followed by _was a singer_
````python
first_name = 'Jane'
last_name = 'Joplin'
message = first_name + ' [' + last_name + '] was a singer'
print(message)
````
While this approach perfectly works, it's not ideal because as our text gets more complicated it becomes harder to visualize the output.
If someone else read this code, they have to visualize all the string concatenations in their head.
**This is where we use formatted strings, they make it easier for us to visualize the output.**

Defining another variable called _msg_, and set this to a formatted string.

````python
msg = f'{first_name} [{last_name}] was a singer'
print(msg)
````

```yaml remark
type: primary
text: A formatted string is one that is prefixed with a f.
```
With these curly braces, we're defining place holders or holes in our string, and when we run our program these holes will be filled with the value of our variables.
So here we have 2 placeholders.

With this formatted string we can easily visualize what the output looks like.

So, to define formatted strings, prefix it with an _f_ and add curly braces to dynamically insert values into your strings.

## String Methods

To calculate the number of characters in the string below, we can use a **_built in_ function** called _len_:
````python
course = 'Python for Beginners'
print(len(course))
````
So, as you can see, we have 20 characters in this string.
This is particularly useful when you receive input from the user.
For example, you have noticed that when you fill out a form online, each input field quite often has a limit.
For example, you might have 50 characters for your name, so using this lenght function we can enforce a limit on the number of characters in an input field.
If the user types in moe characters than we allow, we can display an error.

Now, this _len_ function is another function built into Python, it's a general purpose function, so it's not limited to couting the number of characters in a string.
We can use this function to count the number of items in a list.

Now we also have functions specifically for strings.
We refer to these functions as **methods** (object oriented programming style).
To access these functions, we use '.' operator:

- for converting all these characters to upper case
````python
course = 'Python for Beginners'
print(course.upper())
````

- for converting all to lower case
````python
print(course.lower())
````
Note that these methods do not change the original strings; in fact, they create new ones and return its.
So, if we print out our course variable right after we call the _upper_ method, we can see that our course variable still has it's original form:
````python
course = 'Python for Beginners'
print(course.upper())
print(course)
````
Now if you want to find a character or a sequence of characters in a string, you can use the _find_ method.
This will return the index of the first occurrence of character 'o':
````python
course = 'Python for Beginners'
print(course.find('o'))
````
Note that the _find_ method is sensitive to lower case and upper case characters.
For example, if we pass the upper character 'O', it returns '-1' because we don't have an upper case in this string:
````python
course = 'Python for Beginners'
print(course.find('O'))
````
We can also pass a sequence of characters:
````python
course = 'Python for Beginners'
print(course.find('Beginners'))
````
We get '11', because the word starts woth index 11.

We also have a method for replacing a character or a sequence of characters: replace.
````python
course = 'Python for Beginners'
print(course.replace('Beginners', 'Managers'))
````
The same method can be use to replace a single one character:
````python
course = 'Python for Beginners'
print(course.replace('B', 'T'))
````
This method, like the _find_, is case sensitive.

There are times you want to chek the existence of a character or sequence of characters in your string.
In those situations, you use the _in_ operator.
So let's say you want to know if this string contains the word 'Python':
````python
print('Python' in course)
````
This is a boolean expression and get true or false. An it is another case sensitive method:
````python
print('python' in course)
````
## References

- [Programming with Mosh - Python Tutorial for Beginners (Strings)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=1771s)

- [Programming with Mosh - Python Tutorial for Beginners (Formatted Strings)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=2256s)

- [Programming with Mosh - Python Tutorial for Beginners (String Methods)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=2450s)

- [Python 101 - Strings](https://python101.pythonlibrary.org/chapter2_strings.html)

- [How to Quote a String in Python](https://www.codingem.com/python-how-to-quote-a-string/)

- [The Carpentries - Data Types and Type Conversion](http://swcarpentry.github.io/python-novice-gapminder/03-types-conversion/index.html)