% Chapter 2. The Basics of Java
% Hello World! But what can we actually do in this new world? Today we'll go over some of the basics of Computer Science knowledge that you'll need to continue your Java journey.

# 2.0 Hello World Breakdown

---

At the end of the last workshop, we learned how to make text appear in the "console" with the code:

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```

But what does that code actually mean?

The answer is: I'm not telling you :)

Or specifically, I'm not going to tell you what the first and last two lines mean _just yet_.

Because of the way Java is designed, you won't be able to understand what these 4 lines mean until after learning the content next workshop.

---

Until then, just know that Java programs must begin with the lines

```java
public class Name {
    public static void main(String[] args) {
```

and end with the lines

```java
    }
}
```

where `Name` is a name with no spaces.

---

:::::: {.columns}
::: {.column}

The line of code in the middle of the Hello World program is the "meat" of the program - it's the line that actually tells the computer to do something.

```java
System.out.println("Hello World!");
```

This line essentially tells the _System_ to print _out_ the text `"Hello World"` (without the quotes) to the **console**, which is a text box that programmers use for debugging.

The line also ends with a semicolon `;` - **for now, all of the lines of Java you'll be writing will need to end with a semicolon**.

:::
::: {.column}

**Let's try an experiment!**

How do you think you could get the computer to print the text "Hello Robotics!" instead?

:::
::::::

---

# 2.1 Variables

---

If you've taken Algebra, you've probably heard of the concept of "variables" before.

x = 9

y = 10

x + y = ?

Computers have a similar concept: a **variable** is some place (memory address) where we can store a value and give that value a name.

If you've learned Javascript before, you know the syntax

```js
var x = 9;
```

to assign values to variables. If you've taken AP Computer Science A, you would have been taught that Java's syntax for assigning variables is

```java
int x = 9;
```

<sup>\*AP is a trademark of the Collegeboard</sup>

---

What if I told you that the Javascript syntax _is also valid Java_?

```java
public class Variables {
    public static void main(String[] args) {
        var x = 9;
        var y = 10;
        var result = x + y;
        System.out.println(result);
    }
}
```

Since Java 9 (AP CSA teaches Java 8), you can use `var` to declare variables in certain scenarios. But for the purposes of this week's workshop, I'll be using the more verbose

```
<type> <name> = <value>;
```

syntax for declaring variables.

---

:::::: {.columns}
::: {.column}

A variable's name **cannot contain any spaces** and **cannot start with a number digit**.

It otherwise can contain any Unicode character and can be as long as you'd like.

It's also Java **convention**, or common practice, to not start variable names with `$` or `_`, since those look a bit weird.

:::
::: {.column}

This is valid Java!

```java
int 🤡 = 100;
```

This is not valid Java:

```java
int 101pets = 101;
```

:::
::::::

---

# 2.2 Types

---

```
<type> <name> = <value>;
```

The **type** of a variable tells you what sort of data goes in it.
Java has **8 primitive types**, which are types that are directly builtin to the language:

```java
byte yum = 255;
short excuseMe = 0;
int inLeague = 5;
long boi = 999_999_999;
float balloon = 3.14;
double theFun = 6.28;
boolean yes = true;
char bee = 'B';
```

`byte`, `short`, `int`, and `long` are called "integer" types, which means they can only store positive and negative whole numbers. Each type has a different range of numbers they can store, with `byte` storing numbers from -128 to 127 and long storing numbers from -2^63 to 2^63 - 1.

---

Usually, you'll use `int` for generic integer variables and `long` if you need bigger numbers. For writing big numbers out, you can use underscores to separate out the digits so its easier to read :)

`float` and `double` are "floating-point" types, and store numbers with decimals. `double`s store numbers with twice as much precision as `float`s, so you'll almost always see `double`s being used over floats in our code where possible.

`boolean` stores one of two boolean value: either `true` or `false`. It's useful for logic that asks "yes" or "no" and similar questions.

`char` stores a single Unicode character.

---

:::::: {.columns}
::: {.column}

Beyond the 8 primitive types, Java also has a huge zoo of `Object` data types. (You'll learn what `Object` is later.) The last type I'll be teaching today is `String`, which stores a _string_ of <i>char</i>acters, or essentially a piece of text.

```java
String hai = "Hello World!";
```

In fact, you've already seen a `String` before! In order to define a String, just surround the text you want in quotes.

:::
::: {.column}

But what if you need to use a `"` in a String? You need to "escape" the character, which looks like the following: ```

```java
String hmm = "Quotes look like this \".";
```

:::
::::::

---

A few other things you can escape include the backslash character itself `\\`, newlines (the enter key) `\n` and the annoying bell sound `\a` (don't try this at home).

---

# 2.3 Math

---

So now that you know how to declare variables, it's time to learn how to use them!

All variables can be put between the parentheses of `System.out.println()`, which will print out that variable.

```java
int stuff = 50;
System.out.println(stuff);
```

The general syntax for invoking methods is `<object>.<method>(<arguments>);` You'll learn more about methods later, so just memorize that for now.

---

In addition, Java allows you to write math with the `+`, `-`, `*`, and `/` operators:

```java
double a = 3.0;
double b = 4.0;
double result = a * a + b * b;
result = result + 2.0;
result = result / a;
System.out.println(result);
```

If you do math on a variable and then store the result back into the variable, you can use the `+=`, `-=`, `*=`, and `/=` operators:

```java
result += 2;
result /= a;
```

---

:::::: {.columns}
::: {.column}

Another useful operator is the `%` ("rem" or "mod") operator, which finds the **rem**ainder of a division, also called the **mod**ulo:

```java
int result = 13 / 2;
System.out.println(result);
```

Java understands order of operations, but use parentheses where it makes sense, just like you would do in Math class.


```java
double result1 = 15 + 3.0 / 2.0 - 7.0;
double result2 = 15 + (3.0 / 2.0) - 7.0;
```

:::
::: {.column}

Watch your types! Since integers can only store whole numbers, this actually evaluates to 3 rather than 3.5:

```java
int result = 21 / 6;
```

`int`eger division always trunucates the decimal part of the answer. When you need to keep the decimal, use a `double`!

:::
::::::

---

# Homework

If a robot is travelling at 1.2 meters per second, how many seconds will it take to travel 28 meters? Write a Java program that solves this problem, and print the output.

---

# "Advanced" Workshop Diagnostics

---

## "Advanced" Workshop Diagnostics

1. Write a program that prints `Mrs. Ellis is a goddess and we must all worship her \o/` to the console.
2. Ask the user for 10 (possibly decimal) numbers, then print the sum of the numbers.
3. Write a class `Robot`  in the `commandb` package with the fields `String name`, `int teamNumber`, and `double happiness`, along with an appropriate constructor, getters, and setters. Write a second class `Bogo` in the `commandb` package that `extends` Robot, and have it set it's name to `"Bogo"`, team number to `8060`, and happiness to `1.0` in the constructor. Add a method in `Bogo` with the signature `void spin()` that prints `Weeeeeee!` to the console.
4. Write an interface `Worshipper` with the methods `void worship(String deity)` and `boolean isDevout()`. Make `isDevout` a default method that returns `true`. Have `Bogo` implement `Worshipper` and print some sort of worshipping message whenever `worship` is invoke.

---

5. Write a class `Pair<A, B>` with an appropriate constructor and getters (but no setters).
6. 1. Given the function `static void vibeCheck() throws IllegalStateException`, which may or may not throw an `IllegalStateException`, write a program that invokes `vibeCheck` and then reports whether or not the vibe check succeeded by printing to the console.
    2. Given the entire Bee Movie script as standard input, programmically find the one line in the movie that contains both `"bee"` and a number. Print this line out.
    3. Write a program that prints "Nope" and then exits the process with code `80`.
    4. Do exercise #2, but allow any number of decimals to be entered. Once the user enters a `0`, stop accepting input and print the sum of all the numbers.

---

        5. Given an arbitrary path from standard input, write "Bee bold! Bee brave!" to that file, creating directories as necessary. Make sure to close the stream once the program is done writing to the file. If IO fails, make sure to print an error!
    7. Given an arbitrary date entered as `YYYY/MM/DD`, print how many days have elapsed since or will elapse until midnight (the zeroth second) on that date. The date should be interpreted based on the Western calender in use at that time. Print an error if an invalid date is given.

---

    8. Spawn 2 threads. Prime-factor 514,011,539 on the first thread and 584,783,621 on the second. On the main thread, wait for both calculations to finish, then print their results. You can use any algorithm you want to factor the numbers :)
    9. Download the file at `https://raw.githubusercontent.com/TessHuelskamp/fitness-landscape-database/master/readme.md`, then print it to the console.

---

7. Using streams, given an arbitrary list of numbers from the program arguments, find every number less than 10, then print "chicken" number number of times on a line for every number that remains. Equivalent code without using streams:
```java
var nums = args.split(" ");
for(var num : nums) {
    var parsedNum = Integer.parseInt(num);
    if(parsedNum < 10) {
      for(int i = 0; i < parsedNum; i++) {
          System.out.print("chicken ");
      }
    }
    System.out.println();
}
```