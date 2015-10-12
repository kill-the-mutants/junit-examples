#!/bin/sh

DEP_DIR="dependencies"
EXAMPLE_DIR="examples/$1"

# check if we have a real example folder
bad_dir ()
{
  if [ "$1" != 1 ]; then
    echo "You passed in the $1 folder."
  fi
  echo "You must pass an example folder to run. Try running:"
  echo "./run.sh example1"
  exit 0
}

case $EXAMPLE_DIR in
  "")           bad_dir ;;
  *)            if [ ! -d $EXAMPLE_DIR ]; then
                  bad_dir "non-existent $EXAMPLE_DIR"
                fi
esac

# compile
CLASSPATH=$DEP_DIR/*
javac -cp "$CLASSPATH" $EXAMPLE_DIR/*.java

# run
CLASSPATH=$CLASSPATH:.
PACKAGE=$EXAMPLE_DIR
java -cp "$CLASSPATH" $PACKAGE.TestSuite
