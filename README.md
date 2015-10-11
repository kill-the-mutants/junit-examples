# junit-examples
Testing examples for Java using JUnit testing framework

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
│
├───example1
│   │   Snippet.java
│   │   TestSuite.java
│   │   Tests.java
│
├───example2
│   │   ...
│
│   ...
│
└───dependencies
    │   # Look below; paste these in yourself!
    │   junit-4.12.jar
    │   hamcrest-core-1.3.jar

```

# Getting it up and running
There are two possible ways to run these tests. One involves using our scripts and the dependencies folder, another involves manually installing JUnit and compiling your code. Both work just fine.

### Scripts and the dependencies folder
Because these tests are run using JUnit and it gets annoying recreating your classpath every time you open terminal, we decided to create a script to handle it for you. All we ask is for you to download [junit-4.12.jar](http://search.maven.org/remotecontent?filepath=junit/junit/4.12/junit-4.12.jar) and [hamcrest-core-1.3.jar](http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar) and place them in the dependencies folder.

To run, simply do the following:

```
./run.sh [name of example directory]
```

### Manually installing JUnit and classpath configuration

##### Downloading JUnit (only first time)
In order to run any of these tests, you will need both [junit-4.12.jar](http://search.maven.org/remotecontent?filepath=junit/junit/4.12/junit-4.12.jar) and [hamcrest-core-1.3.jar](http://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar) downloaded to your computer. Place them into the same directory, perhaps named JUNIT_HOME.

##### Classpath (every time)
It seems like every time you open terminal you will have to add JUnit and hamcrest to your classpath. Assuming you are using the latest stable versions, type in the following:

```
export JUNIT_HOME=[wherever you saved JUnit and hamcrest]
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:$JUNIT_HOME/hamcrest-core-1.3.jar
```

##### How to run
You can now compile and run the tests using terminal!

```
javac Snippet.java Tests.java TestSuite.java
java TestSuite
```
