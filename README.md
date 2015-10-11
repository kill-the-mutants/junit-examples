# junit-examples
Testing examples for Java using JUnit testing framework

# Structure
Our goal is to make each example simple to follow. Each example has it's own folder with the following files:

#### Snippet.java
This file is a small class (or 'snippet') that contains the code to be tested.

#### TestSuite.java
This file is how you run your tests. It should be the same in every example folder.

#### Tests.java
Here is where the tests go for Snippet.java.

```
junit-examples
│   README.md
│
└───example1
│   │   Snippet.java
│   │   TestSuite.java
│   │   Tests.java
│
└───example2
│   │   ...
│
│   ...
```

# Setup
Setup involves two major events: installing JUnit and setting up your classpath.

#### Installing JUnit (only first time)
In order to run any of these tests, you will need both Java and JUnit installed on your computer. [Click here for a tutorial for OS X users.](http://stackoverflow.com/a/26977630)

#### Classpath (every time)
It seems like every time you open terminal you will have to add JUnit and hamcrest to your classpath. Assuming you are using the latest stable versions, type in the following:

```
export JUNIT_HOME=[wherever you saved JUnit and hamcrest]
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar
```

# How to run
You can now compile and run the tests using terminal!

```
javac Snippet.java Tests.java TestSuite.java
java TestSuite
```
