% Chapter 3.1 Objects & Classes
% As codebases grow bigger, programmers need some way to organize their code. So how is Java code organized? I guess that'll be the _object_ of today's _class_!

# 3.0 Object Orientated Programming

---

So far, we've learned that you can store data into **variables** and that variables have a type:

```java
int stuff = 1;
String hi = "are you ready for class?";
```

Consider a situation where you would need to store information for each of the 4 wheels on the robot. You could write the following:

```java
double frontLeftWheelSpeed;
double frontLeftWheelAcceleration;
double frontLeftWheelJerk;
double frontRightWheelSpeed;
double frontRightWheelAcceleration;
double frontRightWheelJerk;
```

and so on, but you can see how that would be _very_ tedious.

Is there a better way?

---

Java solves the problem of organizing code using **Object-Orientated Programming**. What this means is that related pieces of data are put into different `Object`s.

Java's OOP involves two parts: Objects (a container for data) and Classes (a template for objects).

Classes define two main things:

- **what data** goes inside of an object ( class **fields**)

- **what you can do** with that data (class **methods**)

---

## A Wheel Class

```java
public class Wheel {
    // Fields: what data should a Wheel store?
    public double speed = 0;
    public double acceleration;
    public double jerk;

    // Constructors: how do we make a new Wheel?
    public Wheel() {
        speed = 0;
        acceleration = 0;
        jerk = 0;
    }

    // Methods: what can we do with a Wheel?
    public void runWheel() {
        acceleration += jerk;
        speed += acceleration;
    }
}
```

---

# 3.1 Classes & Fields

---

## The Magic Lines

The syntax for declaring a class is

```java
<visibility> class <name> {
    // code
}
```

You've in fact being declaring classes for every program up until now - the code

```java
public class Main {

}
```

defines a class called `Main`!

_All_ Java code must exist inside a class - that's why you've been forced to write the 2 magic lines above for every program so far.

---

## Fields

Traditionally in Java code, the **fields** of a class are defined first. A field is essentially a variable that is tied to a class.

Fields look almost exactly like variable declarations:

```java
public double speed = 0;
public double acceleration;
public double jerk;
```

However, a field declaration also includes a visibility modifer. (We'll talk about visibility later.)

As shown with `speed`, you can declare a variable and set its value on the same line of code.

If you don't set a variables value, it will automatically be set to a default value depending on the type of the variable: `0` for all numbers, `false` for booleans, and `null` for Object.


---

# 3.2 Methods

---

## Methods

After the fields and constructors, the **methods** of a class are defined last. They contain the bulk of Java code: the instructions for making a robot move.

You've in fact already been writing methods for every program: the other two magic lines

```java
public static void main(String[] args) {

}
```

declares a method called `main`! The general form of a method looks like:

```
<modifiers> <return type> <name>(<arguments>) {
    // code
}
```

Which is quite a bit to unpack. Let's go this step by step:

---

## Modifiers

A method modifier tells Java something about that method.

The modifier you see the most often is the **visibility** modifer, which has the same values as the visibility in a field declaration.

For now, we'll always use `public` as our visibility modifer. Once we get to what visibility actually is, I'll show what the other visibility modifiers mean.

Beyond visibility, a method can have any combination of various other modifiers. So far, the one we've seen most often is `static`.

---

## Return Type

Java's methods are sometimes also called **function**s. Just like math functions, Java methods can **return** up to 1 value.

For example, here's a function that returns an integer:

```java
public int addOne(int x) {
    return x + 1;
}
```

This would be equivalent to the function `y = x + 1`.

---

## Arguments / Parameters

Between the parentheses of a method are the **arguments** or **parameters** to that method. These are essentially the input to the method.

For example, in the `addOne` method on the previous slide, `addOne` requires a single input called `x` of type `int`.

When you write a parameter, that parameter essentially becomes a variable within the method. You could do everything you've learned about math in Java to x in the `addOne` function!

While a Java method can only have 1 return value, a method can have multiple inputs:

```java
public int max(int a, int b) {
    if(a > b) {
        return a;
    } else {
        return b;
    }
}
```

---

And that's a basic introduction to methods! Everything we've learned up until today's workshop was code inside of a method. You can declare variables, do math, and write loops inside of methods.

However, Java won't let you (and it doesn't make sense to) do math or write loops outside of a method:

```java
public class Oops {
    // comments can go anywhere
    // but this while loop is missing a method to call home
    while(true) {
        System.out.println("oops!");
    }
}
```

---
