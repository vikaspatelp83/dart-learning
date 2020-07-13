<link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">


# Dart Notes by Vikas Patel
Here are the Hands-on notes for Dart Programming Language.   
I created these notes while I was learning Dart Language.  
You can use these notes as a quick reference to Syntax and Demo.  
I've covered almost every fundamental concept of Dart in these notes.  

[Take a look at my blog](https://www.villageprogrammer.blogspot.com/) 



- [Dart Notes by Vikas Patel](#dart-notes-by-vikas-patel)
- [1. Basics](#1-basics)
  - [1.1 The Main Function](#11-the-main-function)
    - [The syntax of main function](#the-syntax-of-main-function)
    - [Demo](#demo)
  - [1.2 Data Types](#12-data-types)
    - [Syntax creating variables in Dart](#syntax-creating-variables-in-dart)
    - [Demo](#demo-1)
  - [1.3 String and String Interpolation](#13-string-and-string-interpolation)
  - [1.4 Constant and Final Variables](#14-constant-and-final-variables)
    - [Demo](#demo-2)
- [2. Control Statements](#2-control-statements)
  - [2.1 If - Else Statements](#21-if---else-statements)
      - [IF alone](#if-alone)
      - [IF and ELSE together](#if-and-else-together)
      - [IF-ELSE ladder](#if-else-ladder)
    - [Demo](#demo-3)
  - [2.2 Conditional Expression](#22-conditional-expression)
  - [2.3 Switch Case](#23-switch-case)
      - [Syntax](#syntax)
    - [Demo](#demo-4)
- [3. Looping](#3-looping)
  - [3.1 For loop](#31-for-loop)
    - [Syntax](#syntax-1)
    - [Demo](#demo-5)
    - [3.1.1 For ... in Loop](#311-for--in-loop)
      - [Syntax](#syntax-2)
      - [Demo](#demo-6)
    - [3.1.2 Variation in for](#312-variation-in-for)
  - [3.2 While Loop](#32-while-loop)
    - [Syntax](#syntax-3)
    - [Demo](#demo-7)
  - [3.3 Do ...While Loop](#33-do-while-loop)
    - [Syntax](#syntax-4)
    - [Demo](#demo-8)
    - [While vs Do...While](#while-vs-dowhile)
  - [3.4 Break and Continue](#34-break-and-continue)
    - [Break](#break)
      - [Demo](#demo-9)
    - [Continue](#continue)
      - [Demo](#demo-10)
  - [3.5 Label](#35-label)
    - [Demo](#demo-11)
- [4. Functions](#4-functions)
      - [Breakdown of function](#breakdown-of-function)



---
# 1. Basics
## 1.1 The Main Function 

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
## 1.2 Data Types
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

## 1.4 Constant and Final Variables

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

# 2. Control Statements 
These statements are use to control the execution flow of the program and add various logics to the program. 

## 2.1 If - Else Statements 
Simple condition checking.  
**Syntax**   

#### IF alone

```dart 
if(condition){
    // block 1
    // execute the code
}
```
When the condition is  `true` the code inside `block 1` gets executed.
Otherwise nothing happens to the code inside   `block 1`.


#### IF and ELSE together

```dart 
if(condition){
    // block 1
    // execute the code
} else{
    // block 2
    // execute the code 
}
```
#### IF-ELSE ladder
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

## 2.2 Conditional Expression 
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

## 2.3 Switch Case  

If we have constant conditions like ids as `1, 2, 3, 4, 5`  
Instead using many `if-else` statements we can use `switch-case` statement.

The case can be a constant `int` or a constant `String`.  
#### Syntax 
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

# 3. Looping
We can repeat the statements using looping.  
There are 3 loops in Dart :  
* For 
* While 
* Do ...While


## 3.1 For loop
1. The loop first initializes the `iteration_var` 
2. then checks `breaking_condition` 
3. then executes the `Statements` and 
4. increments or decrements the `iteration_var` and
5. 2,3,4, are repeated until `breaking_condition` remains `true`. 
   
### Syntax

```dart
for(iteration_var; breaking_condition;  increment/decrement)  
{
    // Statements
}
```

### Demo
```dart
// print even nums
for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0){
        print(i);
    }
}
```

### 3.1.1 For ... in Loop 
#### Syntax 
`for(var varname in IterableList){....}`
#### Demo
```dart
// for ..in loop
List names = ["Dave", "Andy", "Vikas", "Mark"];
for (var name in names) {
    print(name);    
}

```
This loop is very useful when using List and other data containers.

### 3.1.2 Variation in for
we can omit the `initial`, `breaking` and `incr/decr` statements.  
```dart 
for (; x < 20; x++) {
    print(x);
}

for(;;x++){
    print(x);
    if(x==10){
        break;
    }
}

for(var x = 0;;){
    x++;
    print(x);
    if(x==10){
        break;
    }
}

```

---


## 3.2 While Loop
While loop is an `entry controlled` loop.  
The code inside `{...}` of while loop will execute only when the condition is `true`.

### Syntax 
`while(condition){...}`

Here we declare a condition or breaking condition for the loop.  
See the demo
### Demo
```dart
// while loop
// print 0...9
var k = 0; // this is must
while (k < 10) {
    print(k);
    k++;
}
```

---


## 3.3 Do ...While Loop
Do ...while Loop is an `exit controlled` loop.  
Here the `Statement` will run for the first time regardless the `condition` is `true` or `false`.  
Then it will check the `condition` if it is `true` the the loop will continue execution otherwise it will jump out of the loop.  

### Syntax
`do{...} while(conditon);`
Here the semicolon(`;`) is must.

### Demo 
```dart
// print 0...9
// do ..while loop
int x = 0;
do {
    print(x);
    x++;
} while (x < 10);

```  

### While vs Do...While 
Both work in similar manner.   
But, `do...while` will execute at least once and `while` won't. 


---

## 3.4 Break and Continue
These are two loop control statements.   
Which are used to _forcefully control_ the flow of loop executin.
### Break 
`break` is used to stop the execution, and jump out of the loop.
#### Demo

```dart
// break after printing 5
for(int i = 0; i < 10; i++){
    print(i);
    if(i==5){
        break;
    }
}

// run and observe
// break -> stop execution of loop
for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
        print("$i $j");
        if (i == 2 && j == 2) {
            break; // will break inner loop
        }
    }
}
```
**We have already used `break` in `switch...case` program above.**

### Continue
`continue` is used to skip current iteration.  
#### Demo
```dart 
// continue -> skip an iteraion in a loop
for (var i = 0; i < 10; i++) {
    if (i == 5) {
        // skip when i==5
        continue;
    }
    print(i);
}
```
---

## 3.5 Label
Label is a new concept in Dart (we have seen it in `C` language with its buddy `goto`).   
This is not a magical spell from _Hogwarts_ that will do amazing magical things.  
It is just a way to make loop more controlled than before.  
We can name a block of code using label.  
Take a look at below code snippet.  

### Demo   
```dart
print("i j");

outerLoop:
for (int i = 0; i < 5; i++) {
  // ignore: unused_label
  innerloop:
  for (int j = 0; j < 5; j++) {
    print("$i $j");
    if (i == 2 && j == 2) {
      break outerLoop; // will break outerloop
    }
  }
}
```
Try doing this and observe the result of `i j`.


```dart
print("i j");

outerLoop:
for (int i = 0; i < 5; i++) {
  // ignore: unused_label
  innerloop:
  for (int j = 0; j < 5; j++) {
    print("$i $j");
    if (i == 2 && j == 2) {
      break innerLoop; // will break innerloop
    }
  }
}
```
---


# 4. Functions
Functions are used to group the code statements that do something.   
e.g. You want to calculate the area of a rectangle then the formula will be `area = length * width`.   
You can do it where you want to use the `area`. _But, if you want to double the area and add 20 to the result then what ?  
Will you write all the code again and again or find some convenient solution._ 
So, the solution is using functions.  
Your code will be 
```dart
var area = length * width;
area = area * 2;
area = area + 20;  
```
Now you are able to use the final value of `area`. 
So, let's declare a simple function that says `Hello World!` to the user (after learning the simple function we will continue with our `area` calculation)   
```dart
void sayHello(){
  print("Hello World!");
  // That's common saying hello to the world
  // let's say 'Hello Dart, Welcome to Earth' 
  print("Hello Dart, Welcome to Earth"); 
}
```

#### Breakdown of function
**`void`** : It is the return type as you know Dart is a statically typed language like Java, C++, C and there are more. This tells the compiler that we will return a vaalue of the given type `(int, double, String, bool, other user defined types)`.   
Here  `void` tells that the function will not return any value.

**`sayHello`** : It is the name of the function. It can be anything but, should be relevant to the work of the function like: `multiplyBy2(), makeHalf(), doubleThevalue(), reduceThree(), calculateSI() etc.`

**`()`** : It is called parameter. we can pass values that we want to work on. Like a `name` that should be printed instead of `Dart` or `World`  in the above example.   
Let's assume we want to say Hello to you and we don't know your name then we will pass a `String` called  `name` and interpolate it with the word `Hello` and print it.  
Look at the code below..
```dart
void sayHello(String name){
  print("Hello, $name");

}

void main(){
  sayhello("Vikas"); // Hello, Vikas
  sayhello("Dart"); // Hello, Dart
  sayhello("World"); // Hello, World
}
```
Copy the above code and run it.  

You can also return the string.
```dart
String sayHello(String name){
  return "Hello, $name";
  // don't forget to change the return type 
}

void main(){
  print(sayhello("Vikas")); // Hello, Vikas
  print(sayhello("Dart")); // Hello, Dart
  print(sayhello("World")); // Hello, World
}
```

Now, let's work on our `area` example:   
```dart
int smartAreaOfRectange(int length, int width) {
  int var area = length * width;
  area = area * 2;
  area = area + 20;
  return area;
}
```

Put this code in your file and call it in the main function as we've done in `sayHello(...)` function.


