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

although this book's topic is DevOps in Python, it's packaging chapters are worth
reading even for people don't have special interest in DevOps. It is very helpful
for setting up a valid, standard python envirenment for projects. It gives a
systemetic view and explanation on a lot of useful features like virtural
environment and Tox. As developers who have relied upon
web sites for much of our information, we think this book gave us a
better understanding of a lot of packages we have been using.


## Interactive Usage

This section discusses the use of "Read-Eval-Print-Loop" (REPL) programming in
Python. This is interactive programming where a shell Reads some typed in code,
Evaluates that code, Prints the result of the evaluation, and Loops back to
read another piece of code.

According to the author, "Reproducibilly
and peer review are important for DevOps work" (35) and "The faster the feedback
cycle, the faster we can deploy new tested solution"(38). Thus, from a DevOps prospective,
taking a look at interactive consoles is important.


As the author notes, invoking Python from the
command line, without any arguments, puts the user into an REPL. The author
writes that "Using the Python native console without `readline` is unpleasant"
(30). We would add that it is also unpleasant to read a sentence without having
had any introduction to what it is talking about: there is no mention of this
`readline` anywhere in the book before this sentence, and so the reader has no
clue as to what this thing that oughtto be introduced is or why the Python native
console is "unpleasant" without it.

In any case, there are other ways of interacting with Python in an REPL. Zadka
has a section on writing one's own REPL systems using the `code` module, but we
think this section is of very limited use, considering the better REPL systems
available, such as `ptpython` or `iPython`. Zadka's brief description of
`ptpython` makes it clear why we might prefer it to the native Python REPL, but
offers no indication as to why we would not just use `iPython`, the major
alternative to Python's built-in REPL.

Zadka next introduces Jupyter Lab, and the use of Jupyter notebooks.
When he writes, "notebooks are *not* an auditability tool" (35), we wish he had
told us previously what an "auditability tool" *is*, so we could understand why
notebooks are not one of these things. He writes, "If working on an environment
that is 'too interesting' (for example, the default web browser is not
configured properly) the standard output will contain a preauthorized URL to
access the server" (35). We must admit to being completely baffled by this
passage: why is an improperly configured browser "too interesting," rather than
simply a bad configuration? And what does it mean to say that, if our browser
configuration is improper, then we receive a "preauthorized URL"? If we just
configure our browser improperly, then we can gain access to the server without
any access validation? That *can't* be what the author means (we hope!), but
then what does he mean?

Whatever our wrries about the details of this chapter, Zadka's concluding
sentence is certainly correct: "The faster the feedback cycle, the faster we
can deploy new, tested solutions. Using Python interactively allows getting the
quickest possible feedback: immediate" (38).

## OS Automation

The section on "OS Automation" would be better named "how to write shell
scripts in Python." And there are reasons one might want to do so: for
instance, Python certainly has better and more varied control structures than
any shell we've used, and if your script needs to loop over a list of
dictionaries, you should certainly write it in Python.

The author notes that Python is not as good as shell languages at connecting
multiple, existing tools together in pipelines, but goes on to make the odd
remark, "those long pipelines of text transformers turn out to
be an artifact of shell limitations.”(50) But these pipelines are not an "artifact"
of anything: no, they were a quite deliberate design decision on the part of
the early UNIX pioneers at Bell Labs, as described in a book like *Software
Tools*. And they are often the right tool for the job. For instance, if we want
to get the five longest reviews, by line count, in our book reviews repo, we
could write a Python program to do this in... 10 minutes? But using a shell
pipeline, it took us literally about 10 *seconds* to write:

`wc -l *html | sort -r | head -n 6 | tail -n 5`

It would be silly for us to call the 10 minutes we would take writing the
Python program "an artifact of Python limitations": a good software engineer
has a *toolkit*, not a single tool, because he knows that different tools are
appropriate for different jobs.


## Testing

In this section, the author discusses testing strategies, with particular
emphasis on testing the code "used for automating systems."(51) As Zadka notes,
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
files that are next to each other."(112) However, no file system we have ever
worked on uses the concept of two files being "next to each other," so it is
hard to know what he means.

The author doesn't make it completely clear why one would use Paramiko to SSH
rather than a OS shell. He mentions how nice it is to use Jupyter notebooks to
make self-ducmenting SSH sessions: but Z shell and Bash both have Jupyter
kernels. It may be that Paramiko indeed offers advantages here; we just weren't
sure what they were.


## Salt Stack and Ansible

Salt Stack and Ansible are "infrastructure-as-code" tools. They are included in
this book because Salt can be scripted in Python, while Ansible is
scriptable (for inventories) and extensible in Python. As happens a little too
often in this book, the writing is sometimes unclear. When
the author writes, "whenever a YAML file is used, `salt` will allow a Python file
that defines a dictionary,"(121) does he mean "whenever a YAML file is
*called for*, one may alternately use a Python file"? Perhaps... but then that
is what he ought to have written. Or, when discussing Ansible inventory
scripts, we find "Ansible will use... the same Python used to run it in order
to run the inventory script" (140). Wel, Ansible is a program itself... what
does "the same Python used to run it" mean? We have no idea, and no further
eexplanation is offered.

## Docker

In his chapter on Docker, Zadka introduces DockerPy, a library for interfacing
with Docker through Python. Although we have been working with Docker for
several years, we did not know about this facility, so this chapter was a great
find for us. When trying to automate the creation and deployment of Docker
containers, it seems likely -- we haven't gotten a chance to try it yet! --
that DockerPy will be a major advance over the Docker CLI and shell scripts.

## Amazon Web Services


