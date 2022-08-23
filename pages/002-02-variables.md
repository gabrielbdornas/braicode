# Variables

In this Python tutorial, you're going to learn about variables, which are one of the most fundamental concepts in programming.
They're not specific to Python and exist in pretty much every programming language out there.

We use variables to temporarily store data in the computer's memory. Here's an example, let's type:

```Python
price = 10
```

As you can see, to create a variable, you just assign it a value and then start using it.
**Assignment is done with a single equals sign (=)**.
Variables must be created before they are used.
If a variable doesn’t exist yet, or if the name has been mis-spelled, Python reports an error.

When the Python interpreter executes this code, it will allocate some memory, then it will store the number 10 in that memory, and finally, it will attach this price label in that memory location.
As a metaphor imagine we have a box.
In that box, we have the number 10, and the price is the label that we put in the box.
Now we can use this label anywhere in our program to access the value that we have in the box.
This is a very simplified explanation!

## Print Function

Let's use our brand new variable and print its value.

```python script
price = 10
print(price)
```

So far we saw that to define variables we start with **an identifier which is the name of our variable**, then, an equal sign, and finally a value.
More accurately, when this number 10 is about to be stored in the memory, first it will get converted to this binary form presentation.
The number 10 is in the [decimal system](https://en.wikipedia.org/wiki/Decimal) which has all the digits from 0 to 9.
Computers don't understand these digits, they only understand [bynary sistem](https://en.wikipedia.org/wiki/Binary_number), which is a bunch of 0's and 1's.
So, to store the number 10 in the computer’s memory first will get [converted to its binary](https://www.khanacademy.org/math/algebra-home/alg-intro-to-algebra/algebra-alternate-number-bases/v/decimal-to-binary).

Updating the value of this price variable to a new value, like 20, we should see 20 printed, because the Python interpreter executes our code line by line from the top.

```python script
price = 10
price = 20
print(price)
```

We set the price to 10, then we reset it to 20, and finally, we print it on.

So far, the numbers that we have until now are whole numbers without a decimal point.
In programming, we refer to these numbers as integers.
We can also use numbers with a decimal point. These kind of numbers are called the floating-point number, or float for short.

```python script
rating = 4.9
print(rating)
```

Now we defined another variable called rating, but this time the float number 4.9 was assigned to it.

We can also define a variable and set it to a [string](https://en.wikipedia.org/wiki/String_(computer_science)), for example, name equals Paul.
In a very simplified way, in computer science, [strings](https://www.bbc.co.uk/bitesize/guides/zc6s4wx/revision/4#:~:text=Most%20programming%20languages%20have%20a,and%20characters%20may%20be%20repeated.&text=A%20string%20can%20be%20a%20constant%20or%20variable%20.) are ordered sequences of characters.

```python script
name = 'Paul'
print(name)
```

Above, the name variable was created and the value Paul was assigned to it. 

We also have another kind of value called boolean which can be True or False. They are like yes and no in English. Below is an example. I'm going to define a variable is_published and set it to True.

```python script
is_published = True
print(is_published)
```

Note that booleans must be capitalized.
Python will not understand an throw an error if you spell it with a lowercase f or t.

```Python
Traceback (most recent call last):
  File "003_python_essentials/001_variables/001_variables_and_print/main.py", line 21, in <module>
    is_published = true
NameError: name 'true' is not defined
```

In summary, simple values can be numbers, which can be integers or floats, strings or booleans.
We can store complex values like lists and dictionaries, which we'll see in the future.

Before going any further, let's practice with a little exercise.
Imagine we're going to write a program for a record company to check on a singer named Paul McCartney.
He's 20 years old and he is a new singer.
I want you to define 3 variables.
One for storing his name, the other for his age, and the last one to inform if he is a new or an existing singer.
Them print this new variables on scream.

Before checking it out below try to do it yourself.

```python script
name = "Paul McCartney"
age = 20
is_new_singer = True
print(name)
print(age)
print(is_new_singer)
```

## Input Function

So far, you've learned how to print messages using defined variables.
No, we're going to learn how to receive input from the user.
For that, we're going to write a small program that asks the user's name, and then we'll print a customized greeting message.

Both input and print are functions that are built into Python.
As a metaphor imagine the remote control of your TV.
On this remote control, we have a bunch of buttons.
These are the functions built into your tv, you can turn it on, turn it off, change the volume, and so on. In Python, we also have functions for common tasks such as printing messages, receiving input, etc.

See below how to call the input function. The parenthesis is used to call or execute the function, it's like pressing a button on the remote control.
Inside these parentheses, we want to add a string to print something on the terminal, let's say "What is your name? ".
The input function will print the message on the terminal, and then it will wait for the user to enter a value.

```Python
input("What is your name? ")
```

```yaml remark
type: primary
text: Do you note that we added a space after the question mark? We did this because in the terminal window the cursor to the user's answer will be separated from the question mark, otherwise, it would be so close.
```

The input function will return the user's answer and now we can store it in the memory using a variable, let's say, `user_name`.
We'll use the `user_name` variable to print a dynamic message like "Hi John, how is it going!".
To perform this we'll use plus signs in a technique called string concatenation.

```Python
user_name = input("What is your name? ")
print("Hi " + user_name + ", how is it going!")
```

```
Hi Gabriel Braico Dornas, how is it going!
```

Above we have "Hi ", which is a string, concatenated or combined with another two strings, our `user_name` variable, and ", how is it going!".
In this expression we combined 3 strings.

Now it's your turn to extend this program and ask two questions, the person's name, and their favorite color. Print a message like "John likes blue!".

Before checking it out below try to do it yourself.

```Python
user_name = input("What is your name? ")
favorite_color = input("What is your favorite color? ")
print(user_name + " likes " + favorite_color + "!")
```

```
John likes blue!
```

## Type conversion

Now, we're going to write a program that will ask about the current year and the year that we were born in.
Then it will use these variables to calculate our age.
We'll start with our input functions.
The return values will be stored in variables called `current_year` and `birth_year` (remember to use underscore to separate multiple words).
Next, we need to calculate the age, so we define another variable called `age`, and here we do some basic math like `age = current_year - birth_year`.
Finally, print age variable.

```Python
current_year = input('Current year? ')
birth_year = input('Your birth year? ')
age = current_year - birth_year
print(age)
```

```yaml remark
type: primary
text: The age calculation above isn't 100% correct, but it's been used only to simplify the explanation of the topic.
```

If we run our program as it is above we'll get the error below:

```Python
(venv) ➜  pai-ta-on git:(main) ✗ python 003_python_essentials/001_variables/003_type_conversion/main.py
Current year? 2022
Your birth year? 1985
Traceback (most recent call last):
  File "/home/gabrielbdornas/code/gabrielbdornas/pai-ta-on/003_python_essentials/001_variables/003_type_conversion/main.py", line 3, in <module>
    age = current_year - birth_year
TypeError: unsupported operand type(s) for -: 'str' and 'str'
```

what is going on here?
Whenever you see this kind of message, that means there is something wrong with your program.
With the information provided here, we can find exactly where the error occurred.
Currently, our program only has a single file, but complex programs often have hundreds or even thousands of files.
In our file, on line 3, this is where we got this error, and right below that we can see the piece of code that generated it.
That is where we're calculating the age, and right below that you can see the message "unsupported operand type(s) for -: 'str' and 'str'" which is a hint to solve the problem.
In this case, str is short for strings.
It means that we're subtracting two strings, and Python doesn't know what to do with it.

Why is that happening?
Everything we type in the terminal is always treated as a string, even if you type the number.
In other words, when we run this program, this birth year variable will be set to a string, with four characters.
To fix this problem we need to convert the year variables into an integer
and then we'll be able to subtract them.

```Python
current_year = int(input('Current year? '))
birth_year = int(input('Your birth year? '))
age = current_year - birth_year
print(age)
```

We've passed these strings to the int function, which will convert it into an integer, and then the Python interpreter will be able to evaluate the expression.
Considering the user's input `current_year = 2022` and `birth_year = 2000` the result will be:

```
20
```

So far you have learned about two built-in functions one is `print()` the other is `input()`.
We have a few other functions for converting values into different types. We have `int()` for converting values into an integer, we also have `float()` to convert values into floats (numbers with decimal points).
And we also have bool for converting numbers and strings into a boolean value.
It's a good exercice to play around with this conversions functions, try it out!

For instance, what we need to take away is whenever you use the input function, you always get a string, so if you're expecting a numerical value you should always convert that string into an integer or to a float.

## Type Function

Let's learn another very used built-in function called `type()`.
If we use it in our age variable it will print the type of it.
We'll look at classes in the future, but for now, it's good to know that age here belongs to the `int` class.

```Python
current_year = int(input('Current year? '))
birth_year = int(input('Your birth year? '))
age = current_year - birth_year
print(type(age))
```

```
<class 'int'>
```

So, here's a little exercise for you.
Write a program to ask the user their weight in lbs or pounds, convert it to kilograms and then print it.
Try to do it yourself before checking the solution below.

```Python
weight_lbs = int(input("What is your weight in lbs or pounds? "))
weight_kg = weight_lbs * 0.45
print(weight_kg)
```

Alright, above we used our input function and ask for the weight in pounds.
We set the result to a variable called `weight_lbs`.
Then we converted the informed value into kilograms (just multiply it to 0.45).
Finally, we printed `weight_kg` result. Straightforward, isn't it?

Considering the user's input `weight_lbs = 100` the result `weight_kg` will be:

```
45
```

## Variable Names

Officially, variable names in Python can be any length and can consist of uppercase and lowercase letters (A-Z, a-z), digits (0-9), and the underscore character (_).
They are case-sensitive, which means that lowercase and uppercase letters are not the same.
The Use of the underscore character is significant as well.
An additional restriction is that, although a variable name can contain digits, the first character of a variable name cannot be a digit.
It is worthwhile to give a variable a name that is descriptive enough to make clear what it is being used for.

The [Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/), also known as PEP 8, contains [Naming Conventions](https://www.python.org/dev/peps/pep-0008/#naming-conventions) suggesting [snake case](https://en.wikipedia.org/wiki/Snake_case) standards for variable names. This pattern ensures that words are lowercase and separated by underscores, as we're using here.

The Python language reserves a small set of [keywords](https://realpython.com/python-variables/#reserved-words-keywords) that designate special language functionality.
No object or variables can have the same name as a reserved word.
You can see this list any time by typing help("keywords") to the Python interpreter.

```python script
help('keywords')
```

Trying to create a variable with the same name as any reserved word results in an error:

```Python
>>> for = 3
  File "<stdin>", line 1
    for = 3
        ^
SyntaxError: invalid syntax
```

## References

- [Programming with Mosh - Python Tutorial for Beginners (Variables)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=783s)

- [Programming with Mosh - Python Tutorial for Beginners (Receiving Input)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=783s)

- [Programming with Mosh - Python Tutorial for Beginners (Type Conversion)](https://www.youtube.com/watch?v=_uQrJ0TkZlc&t=783s)

- [Real Python Blog - Variables](https://realpython.com/python-variables/)

- [Real Python Blog - Variables Quiz](https://realpython.com/quizzes/python-variables/)

- [The Carpentries - Variables and Assignment](http://swcarpentry.github.io/python-novice-gapminder/02-variables/index.html)
