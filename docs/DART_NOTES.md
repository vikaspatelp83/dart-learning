<style>
*{
    font-family: "Hack";
}

</style>
# Dart Notes
Here are the Hands-on notes for Dart Programming Language.   
I created these notes while I was learning Dart Language.  
You can use these notes as a quick reference to Syntax and Demo.  
I've covered almost every fundamental concept of Dart in these notes.  

[Take a look at my blog](https://www.villageprogrammer.blogspot.com/) 
   
---
## Table of contents:
1. [Basics](#basics):  
   1. [The Main Function](#main)
   2. [Data Types](#datatypes)
   3. [String Interpolation](#string_interp)
   4. [Constant and Final Variables](#final_const)
2. [Control Statements](#control)
   1. [If - Else Statements](#ifelse)
   2. [Conditional Expression](#cond_expr)
   3. [Switch Case](#switch)
3. [Looping](#loop)
   1. [For Loop](#for)
   2. [While Loop](#while)
   3. [Do ... While Loop](#do_while)
   4. [Break and Continue](#break_continue)
   5. [Lable](#label)
4. [Functions](#functions)
   1. [Syntax](#func_syntax)
   2. [Types of Functions](#func_types)
   3. [Function Expression (The Fat Arrow)](#fat_arrow)
   4. [Types of Function Parameters](#func_parameters)
5. [Exception Handling](#exception_handling)
   1. [Handle Exception](#handle_exxception)
      1. [try](#try)
      2. [catch](#catch)
      3. [on](#on)
      4. [finally](#finally)
   2. [Stack Trace](#stack_trace)
   3. [Custom Exceptions (Create an Exception Class)](#custom_exceptions)
6. [Object Oriented Programming](#oop)
   1. [Class](#class)
   2. [Constructor](#constructor)
   3. [Getter Setter](#get_set)
   4. [Inheritance](#inheritance)
   5. [Method Overriding](#overriding)
   6. [Inheritance Constructor](#inheritance_constructor)
   7. [Abstract Class](#abstract_class)
   8. [Interface](#interface)
   9. [Static Members](#static)
7.  [Functional Programming](#functional_prog)
    1.  [Lambda](#lambda)
    2.  [Higher Order Functions](#hofunc)
    3.  [Closure](#closure)
8.  [Collections](#collections)
    1.  [List](#list)
    2.  [Set](#set)
    3.  [Map](#map)
9.  [Standard Input/Output](#io)
    1.  [Read user input](#input)
    2.  [Write to console](#output)

---
# 1. Basics
## 1.1 The Main Function <a name="main"> </a>

Every Dart program starts execution from `main()` functions.  
###  The syntax of main function
_We use this version when we want to use commant line arguments._

```dart
void main(List<String> args){  
    // do your stuff here 
}
```

Or simple version    
_Generally we use this version of main._

```dart
void main(){
    // do your stuff here
}
```
### Demo
```dart
void main() {
  // say hello world
  print("Hello World!");
  // print some numbers, integer expression
  print(1 * 2 + 34 - 12 / 5);
  // print double
  print(2.53);
  // boolean
  print(true);
}
```
---
## 1.2 Data Types <a name="datatypes"></a>
Literals in Dart.  

```dart
// literals in Dart
"Dan"; // String literal  
23; // int literal  
45.6; // double literal  
true; // bool literal  
```

There are 4 built-in data types in Dart.  

| SN  | Data Type | Description             |
| --- | --------- | ----------------------- |
| 1.  | int       | Integer value           |
| 2.  | double    | Floating point value    |
| 3.  | String    | String value            |
| 4.  | bool      | `true` , `false`  value |

### Syntax creating variables in Dart
 

**Use explicit way to declare the variable.**  

`typename variable_name;`  

Or initialize while creating.  
`typename variable_name = initial_value;`  

```dart 
int intVariable;
int anotherIntVariable = 111;
String name = "Vikas";
double pi = 3.14;
bool isdeveloper = true;
```
**Use implicit way to declare the variable.**  

Use `var` to create any type of variable.  
`var variable_name;`  

Or initialize while creating.  
`var variable_name = intial_value`;`



### Demo 
**Note:  _In Dart all the data types are  objects and their initial value is `null`._**

Create the variables
```dart
  // numbers: int
  int score = 90;
  // store hexadecimal value
  int hexValue = 0xEAEAEA;

  // numbers: double
  double length = 24.6;
  double exponentValue = 1.4e5;

  // String
  String name = "Dave";

  // boolean
  bool going = false;

  // use var
  var name2 = "Vikas"; // String
  var age = 20;        // int
  var score2 = 45.6;   // double
  var isHere = true;   // bool
  var exp = 2.5e6;     // exponential (double)
  var hex2 = 0xEC43AB; // hex (int)
  var data;            // will have null
```
Print the values  
```dart
print(score);        //int          
print(hexValue);     //int
print(length);       //double
print(exponentValue);//double
print(going);        //bool
print(name);         //String
print(name2);        //String           
print(age);          //int
print(score2);       //int
print(isHere);       //bool
print(exp);          //double
print(hex2);         //int
print(data);         //null value   
```

Check the code in `01 basics/02data_types.dart `

---
## 1.3 String and String Interpolation 
Ways to define a String variable  
```dart
 // ways to define string
  String s1 = 'Vikas'; // with single quote
  String s2 = "Dave"; // with double quote
  String s3 = "It's Easy"; // can use both
  String s4 = 'It\'s Easy'; // excape sequence
  String s5 = 'This is a very very long string '
      'and exceeding the line.'; // long string
  // auto concatenation of strings
```
String Interpolation 

```dart
// Normal Concatenation
String name = "Vikas";
String msg = name + ", We are heading to the west";

// Interpolation
String msg2 = "$name We are heading to the west";
String msglen = "Length of msg = ${msg2.length}";

// Print
print(msg2);
print(msglen);
```
We can interpolate any data type with String in `print(...)` using `$varname`.
```dart
int BoxLength = 123;
double BoxWeight = 4522.4545;
print("Length of box = $BoxLength \nWeight of Box = $BoxWeight");
```
---

## 1.4 Constant and Final Variables <a name="final_const"></a>

In dart we can create constants using 
  -> final
  -> const 

1. **final vs const:**
* `final` variable  can only be set once and it is initialized when accessed
* `const` is internally final in nature but it is a `compile-time constant`   
    -> i.e. it is initialized during compilation

2. Instance variable can be final but cannot be constant
3. If you want a Constant class level then make it 
  `static const` .

### Demo 
```dart
void main() {
  // final
  final city = "Toronto";
  // or
  // final String city = "Toronto";
  // city = "NY"; // Error: Can't assign to the final variable 'city'.

  const PI = 3.1415;
  const double gravity = 9.8;
}
```

Class level constant
```dart
class Circle {
  final color = "RED"; // OK
  // const PI = 3.1415; // Not OK
  static const PI = 3.1415; // OK
}
```
**Only static fields can be declared as `const`.
Try declaring the field as `final`, or adding the keyword `static`.**

---
--- 

# 2 Control Statements <a name="control"></a>
These statements are use to control the execution flow of the program and add various logics to the program. 

## 2.1 If - Else Statements <a name="ifelse"></a>
Simple condition checking.  
**Syntax** 
##### [x] IF alone

```dart 
if(condition){
    // block 1
    // execute the code
}
```
When the condition is  `true` the code inside `block 1` gets executed.
Otherwise nothing happens to the code inside   `block 1`.


##### [x] IF and ELSE together

```dart 
if(condition){
    // block 1
    // execute the code
} else{
    // block 2
    // execute the code 
}
```
##### [x] IF-ELSE ladder
```dart 
if(condition){
    // block 1
    // execute the code
} else if(condition2){
    // block 2
    // execute the code 
} else if(condition3){
    // block 3
    // execute the code  
}
.
.
.
else if(condition n){
    // block n
    // execute the code 
} else{
    // block last
    // execute the code 
}
```

When the condition is  `true` the code inside the respective  `block` gets executed. Otherwise `block last` is executed.     

### Demo 
```dart
void main() {
  var salary = 250000;
  if (salary > 200000) {
    print("You, can get the Credit Card");
  } else if (salary > 150000) {
    print("You can apply for the Credit Card");
  } else {
    print("You cannot get the Credit Card");
  }
}
```
Check code inside `01 basics/05if_else.dart`.

--- 

## 2.2 Conditional Expression <a name="cond_expr"></a>
Conditional expression is a simple alternative to `if-else`.  
There are two conditional expressions   
1. **`condition ? expr1 : expr2;`**  
    returns `expr1` if condition is true else returns `expr2`
    ```dart
    int a = 12, b = 45;
    print("Small Number = ${(a < b) ? a : b}");
    int c = (a < b) ? a : b;
    print("Small Number = $c);
    ```
2. **`expr1 ?? expr2`**  
    if `expr1` is not-null, returns its value; otherwise, evalutes and returns the value of `expr2`
    ```dart 
    int x, y = 345; // x = null;
    print("Value = ${x ?? y}");
    int z = x ?? y;
    print(z);
    ```

--- 

## 2.3 Switch Case <a name="switch"></a>

If we have constant conditions like ids as `1, 2, 3, 4, 5`  
Instead using many `if-else` statements we can use `switch-case` statement.

The case can be a constant `int` or a constant `String`.
##### Syntax 
```dart
switch(variable){
    case 1: 
    // code
    break; // this is must 
    
    case 2: 
    // another code
    break; 
    
    default: 
    // will execute if no case matches
}
```

`break` is must to stop execution after every `case`. 

### Demo 
With integer cases. 
```dart
// Integer (int)
var option = 2;
switch (option) {
case 1:
    print("Option 1");
    break;
case 2:
    print("Option 2");
    break;
default:
    print("Invalid option");
}
```
With String cases.
```dart
String name = "Andy";
switch (name) {
case "Andy":
    print("Hello, Andy");
    break;
case "Dave":
    print("Hello, Dave");
    break;
default:
    print("No name");
}
```
---
--- 
