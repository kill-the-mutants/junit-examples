# junit-examples
Testing examples for Java using the JUnit testing framework. Comes with a script to run your tests with either vanilla JUnit or mutation testing. Currently PIT and Jumble mutation testing tools are supported.

# Structure
Our goal is to make each example simple to follow. Each example has it's own folder with the following files:

##### Snippet.java
This file is a small class (or 'snippet') that contains the code to be tested.

##### TestSuite.java
This file is how you run your tests. It should be the same in every example folder.

##### Tests.java
Here is where the tests go for Snippet.java.

```
junit-examples
│   README.md
│   run.sh
│
├───examples
│   │
│   ├───example1
│   │   │   Snippet.java
│   │   │   TestSuite.java
│   │   │   Tests.java
│   │
│   ├───example2
│   │   │   Snippet.java
│   │   │   TestSuite.java
│   │   │   Tests.java
│   │
│   │ ...
│
└───dependencies
    │   junit-4.12.jar                         # REQUIRED
    │   hamcrest-core-1.3.jar                  # REQUIRED
    │   pitest-1.1.7.jar                       # IF using PIT
    │   pitest-command-line-1.1.7.jar          # IF using PIT
    │   jumble_binary_1.3.0.jar                # IF using Jumble

```

# Getting it up and running
To make running these tests easier, we created a script to run an example using JUnit, PIT, or Jumble. Here is what you need to know:

### The dependencies folder
In order to use our script, we require you to download a few necessary jars. The JUnit ones are required, however the jars for PIT and Jumble are only required if you plan on using those tools for mutation testing. Here is where you can download all of them:

JUnit (REQUIRED):  
[junit-4.12.jar](http://search.maven.org/remotecontent?filepath=junit/junit/4.12/junit-4.12.jar)  
[hamcrest-core-1.3.jar](http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar)  

PIT:  
[pitest-1.1.7.jar](https://github.com/hcoles/pitest/releases/download/pitest-parent-1.1.7/pitest-1.1.7.jar)  
[pitest-command-line-1.1.7.jar](https://github.com/hcoles/pitest/releases/download/pitest-parent-1.1.7/pitest-command-line-1.1.7.jar)  

Jumble:  
[jumble_binary_1.3.0.jar](http://sourceforge.net/projects/jumble/files/latest/download?source=typ_redirect)    

### The script

The script supplied will compile and run a given example folder. Here is the usage information:

```
Usage: ./run.sh [example1|example2|...] [junit|pit|jumble]
```
