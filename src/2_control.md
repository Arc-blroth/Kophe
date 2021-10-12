% Chapter 2.4 Control Flow
% A program that always does the same five calculations is kinda boring. Today we'll be going over Java's constructs for code that can repeat itself and make decisions.

# 2.4 Control Flow

---

## Homework Answers

```java
public class Main {
    public static void main(String[] args) {
        // or `var result = 28 / 1.2;`
        double result = 28 / 1.2;
        System.out.println(result);
    }
}
```

---

## Comments

:::::: {.columns}
::: {.column}

As we start to write bigger programs, we need ways to keep notes on the code we write.

Wouldn't it be nice if we could add notes alongside our code?

Java and other programming languages has the concept of "comments", which are like Google Docs comments. If they're written well, they'll tell other programmers what your code does and why.

:::
::: {.column}

What happens if you don't write any useful comments? This happens:

:::
::::::

---

![](assets/only_god_knows.png)

---

Java has a few different ways to write comments:

For a single line comment use `//` as seen in the meme above.

```java
// this code makes the robot dance
```

For multiple lines you can also use the

```java
/*
 * Insert text here
 * Insert more text
 */
 ```

style of comments.

---

You'll also sometimes see comments with two asterisks at the top. These are called "documentation" comments, and can be found attached to classes, fields, and methods (you'll learn what these are later.)

```java
/**
 * Prints a double and then terminate the line.  This method behaves as
 * though it invokes {@link #print(double)} and then
 * {@link #println()}.
 *
 * @param x  The {@code double} to be printed.
 */
```

You might notice that this is the text that gets printed when IntelliJ's autocomplete box pops up!

In a few weeks you'll see how to write these sort of comments and why they're so useful.

 ---


## If-Else

Whenever a program needs to make a choice, you'll see the `if` keyword being used.

```java
boolean hungry = true;

if(hungry) {
    System.out.println("Mom I'm hungry!");
}
```

The syntax (or how code is written) of using if is

```java
if( < condition > ) {
    < code >
}
```

where `< condition >` can be anything that is a boolean. `< code >` is run if the condition is `true`.

---

Though being pretty simple, `if` lends itself to making all kinds of choices. For example, you can compare numbers using the `==`, `>`, `<`, `>=`, and `<=` operators:

```java
var num = 1;
if(num == 1) {
    System.out.println("num is 1");
}
if(num > 0) {
    System.out.println("num is positive");
}
if(num <= -1) {
    System.out.println("num is negative");
}
```

Note: you don't need to store everything in a variable and then do `if(variable)` - the above code is perfectly fine!

---

You can also attach `else` to the end of an `if` to specify doing something is the condition is `false`.

```java
var num = 1;
if(num > 0) {
    System.out.println("num is positive");
} else {
    System.out.println("num is negative");
}
```

---

And you can even attach more `if`s at the end of `else`s:

```java
var num = 4;
if(num == 0) {
    System.out.println("num is 0");
} else if(num == 1) {
    System.out.println("num is 1");
} else if(num == 2) {
    System.out.println("num is 2");
} else {
    System.out.println("num something else");
}
```

---

## While Loops

While loops allow you to repeat a segment of code _while_ some condition is true.

```java
boolean hungry = true;

while(hungry) {
    // get food and maybe set hungry to false
}
```

---

## For Loops

:::::: {.columns}
::: {.column}

For loops are a bit complicated, and they might seem a bit clunky until after I introduce arrays.

They're essentially while loops on steroids though.

:::
::: {.column}

Let's have a thought experiment: how would you print out the numbers from 1 to 100?

:::
::::::

---

Here's how:

```java
var i = 1;

while(i <= 100) {
    System.out.println(i);
    i++; // store "i + 1" into i, or add one to the variable
}
```

For loops essentially take this common pattern of counting and make it less lines of code:

```java
for(var i = 1; i <= 100; i++) {
    System.out.println(i);
}
```

---

## Inception

`if`s, `while` loops, and `for` loops can also be used together inside of each other:

```java
for(var i = 0; i < 100; i++) {
    if(i % 5 == 0) {
        System.out.println("Found a multiple of 5!");
    }
}
```

If you have two `for` loops, one inside of another, you'll need to make sure each loop uses a different variable name:

```java
for(var i = 0; i < 10; i++) {
    for(var j = 0; j < 10; j++) {
        System.out.println(i + " times " + j + " is " + (i * j));
    }
}
```

---

If you have a bunch of loops nested inside each other, it can be useful to use the `break` keyword to immediately get out of all the loops. `break` will skip the check for the condition of the loop:

```java
for(var i = 0; i < 10; i++) {
    for(var j = 0; i < 10; i++) {
        for(var k = 0; i < 10; i++) {
            if(i + j + k == 1) {
                break;
            }
        }
    }
}
System.out.println("Done");
```

---

## Homework

A common programming job interview question is "FizzBuzz". The rules are as follows:

- Print every number from 1 to 100

    - If the number is a multiple of 3, print "Fizz" instead of the number

    - If the number is a multiple of 5, print "Buzz" instead of the number

    - If the number is a multiple of both (meaning a multiple of 15), print "FizzBuzz" instead of the number

Try implementing a "FizzBuzz" program in Java!