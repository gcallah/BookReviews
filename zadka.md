# DevOps in Python

*DevOps in Python: Infrastructure as Python*  
Zadka, Moshe  
Apress, Belmont, CA, 



CSS Terms: DevOps, Python


## Installing Python

Very detailed tutorial for different ways to install python in different
operating system. Briefly but clearly states the benifit and limitation for
each way of installation. The author also offers detailed instrucitons for
installing pyenv using shell commands.

This book is friendly to the new python user, but the author does assume the
reader has fundemental shell and git knowledge. 

## Packaging

Even this book's topic is DevOps in Python, it's packaging chapters are worth
reading even for people don't have special interest in DevOps. It is very helpful
for setting up a valid, standard python envirenment for projects. It gives a
systemetic view and explanation on a lot of useful features like virtural
environment and Tox. As developers who have relied upon
web sites for much of our information, we think this book gave us a
better understanding of a lot of packages we have been using.


## Interactive Usage



## OS Automation



## Testing



## Text Manipulation

The chapter on text manipulation is brief, and discusses useful Python text
processing capabilities, such as built-in handling of JSON and CSV formats, and
regular expressions. While all of this can be used in a DevOps setting, there
is nothing specifically "DevOpsy" about it.


## Requests

Chapter 7 deals with creating API servers and handling calls to them. The
author recommends using the `requests` library, and especially explicitly using
its `Sessions` capability.

There is a section on REST services, but it is not clear the author really
understands what distinguishes a RESTful service from one that is not REST, as
he doesn't discuss making the server stateless. (Instead he talks about
idempotency.)

## Cryptography



## Paramiko


## Salt Stack

The author writes, "whenever a YAML file is used, `salt` will allow a Python file
that defines a dictionary." Does the author mean "whenever a YAML file is
*called for*, one may alternately use a Python file"? Perhaps... but then that
is what he ought to have written.

## Ansible


## Docker


## Amazon Web Services


