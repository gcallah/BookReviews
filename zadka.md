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
This section is trying to illustrate some Python's third party "Read-Eval-Print-Loop"(REPL)
tool. According to the author, "Reproducibilly and peer review are important for DevOps"(35) 
and "The faster the feedback cycle, the faster we can deploy..."(38). As a result, from DevOps prospective, taking a close look of the interactive console is necessary. And indeed, the author 
does a detailed introduction to the Jupyter Lab structure and usage. However, the DevOps perspective isn't very clear at first before the introduction of Jupyter Lab. It appears to be more like a tutorial to prepare new python user and seemingly redundant. 

## OS Automation

The section on "OS Automation" would be better named "how to write shell
scripts in Python." And there are reasons one might want to do so: for
instance, Python certainly has better and more varied control structures than
any shell we've used, and if your script needs to loop over a list of
dictionaries, you should certainly write it in Python.

The author notes that Python is not as good as shell languages at connecting
multiple, existing tools together in pipelines, but goes on to make the odd
remark, "those long pipelines of text transformers turn out to
be an artifact of shell limitations.” But these pipelines are not an "artifact"
of anything: no, they were a quite deliberate design decision on the part of
the early UNIX pioneers at Bell Labs, as described in a book like *Software
Tools*. And they are often the right tool for the job. For instance, if we want
to get the five longest reviews, by line count, in our book reviews repo, we
could write a Python program to do this in... 10 minutes? But using a shell
pipeline, it took us literally about 10 *seconds* to write:

`wc -l *html | sort -r | head -n 6 | tail -n 5`

It would be silly for us to call the 10 minutes we would take writing the
Python program "an artifact of Python limitations": a good software engineer
has a *toolkit*, not a single tool, because she knows that different tools are
appropriate for different jobs.


## Testing

In this section, the author discusses testing strategies, with particular
emphasis on testing the code "used for automating systems." As Zadka notes,
such code often suffers from a lack of proper testing compared to the
application code itself. This is unfortunate, because "testing is one of the
best ways to increase code quality" (51).

In the section 'Testing Files' and the section 'Testing Process', the author gave some 
great examples of how to test file system without creating too many file directory layers, 
testing material occupying resources, and jeopardizing root permission. Mocking is also very 
common in file system test, so it would be even nicer to have couple example for that instead 
of a brief intro in the previous section. 


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
he doesn't discuss making the server not store applicaiton state.
(Instead he talks about idempotency, which is a different concept.)

## Cryptography



## Paramiko

In discussing SSH, Zadka writes, "Client private and public keys are kept in
fiules that are next to each other." However, no file system we have ever
worked on uses the concept of two files being "next to each other," so it is
hard to know what he means.

The author doesn't make it completely clear why one would use Paramiko to SSH
rather than a OS shell. He mentions how nice it is to use Jupyter notebooks to
make self-ducmenting SSH sessions: but Z shell and Bash are both have Jupyter
kernels. It may be that Paramiko indeed offers advantages here; we just weren't
sure what they were.

## Salt Stack

The author writes, "whenever a YAML file is used, `salt` will allow a Python file
that defines a dictionary." Does the author mean "whenever a YAML file is
*called for*, one may alternately use a Python file"? Perhaps... but then that
is what he ought to have written.

## Ansible


## Docker


## Amazon Web Services


