#!/bin/bash

echo -n "What is your name? "
read NAME

echo -n "How many CPUs do you want? "
read CPUS

echo "Hello $NAME!"
echo "Requesting $CPUS CPUs..."
echo "Job submitted successfully."
