#!/bin/sh

DEP_DIR="dependencies"
EXAMPLE_DIR="examples/$1"
TEST_TOOL="$2"

print_usage_and_exit()
{
  echo "Usage: ./run.sh [example1|example2|...] [junit|pit]"
  exit 0
}

#check if we have the correct number of arguments
if [[ $# -ne 2 ]]; then
  print_usage_and_exit
fi

# check if we have a real example folder
if [ ! -d $EXAMPLE_DIR ]; then
  echo "$EXAMPLE_DIR does not exist."
  print_usage_and_exit
fi

# check if we have a supported test tool
case $TEST_TOOL in
  junit)  ;;
  pit)    ;;
  *)      echo "$TEST_TOOL is not a supported test tool."
          print_usage_and_exit
          ;;
esac

# compile
CLASSPATH=$DEP_DIR/*
javac -cp "$CLASSPATH" $EXAMPLE_DIR/*.java

# run
CLASSPATH=$CLASSPATH:.
PACKAGE=examples.$1
case $TEST_TOOL in

  # vanilla JUnit
  junit)  java -cp "$CLASSPATH" $PACKAGE.TestSuite
          ;;

  # PIT mutation testing
  pit)    java -cp $CLASSPATH \
              org.pitest.mutationtest.commandline.MutationCoverageReport \
              --reportDir . \
              --sourceDirs . \
              --targetClasses $PACKAGE.Snippet \
              --targetTests $PACKAGE.TestSuite \
          ;;

esac
