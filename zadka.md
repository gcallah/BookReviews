# DevOps in Python

*DevOps in Python: Infrastructure as Python*  
Zadka, Moshe  
Apress, Belmont, CA, 

CSS Terms: DevOps, Python

DevOps is a hot topic in software engineering these days, and Python one of the
most popular programming languages in the world. What could be better than a
pithy book combining the two? Well, that is what Moshe Zadka, a long-time
open-source contributor, has given us.

The first chapter of this book deals with installing Python.
It is a very detailed tutorial about different ways to install python in different
operating systems. It describes the benefits and limitations of
each type of installation. The author also offers detailed instrucitions for
installing pyenv using shell commands.
This book is friendly to the new Python user, but the author does assume the
reader has fundamental shell and git knowledge. 
We also wonder if this section really has a place in the book: is someone who
doesn't have Python installed going to pick up a book called *DevOps in
Python*?

This book's packaging chapter is worth
reading even for people don't have special interest in DevOps. It is very helpful
for setting up a valid, standard python environment for projects. It gives a
systematic view and explanation on a lot of useful features like virtrual
environments and Tox. As developers who have relied upon
web sites for much of our information, we think this book gave us a
better understanding of a lot of packages we have been using.

The interactive usage 
chapter discusses the use of "Read-Eval-Print-Loop" (REPL) programming in
Python. This is interactive programming where a shell Reads some typed in code,
Evaluates that code, Prints the result of the evaluation, and Loops back to
read another piece of code.
As the author notes, "The faster the feedback
cycle, the faster we can deploy new tested solution" (38).
And that is why interactive consoles are relevant to DevOps.

The section on "OS Automation" would be better named "how to write shell
scripts in Python." And there are reasons one might want to do so: for
instance, Python certainly has better and more varied control structures than
any shell we've used, and if your script needs to loop over a list of
dictionaries, you should certainly write it in Python.

The author notes that Python is not as good as shell languages at connecting
tools together in pipelines, but goes on to make the odd
remark, "those long pipelines of text transformers turn out to
be an artifact of shell limitations" (50). But these pipelines are not an "artifact"
of anything: no, they were a quite deliberate design decision by the early UNIX
developers.

Turning to testing, the author discusses testing strategies, with particular
emphasis on testing the code "used for automating systems" (51). As Zadka notes,
such code often suffers from a lack of proper testing compared to the
application code itself. This is unfortunate, because "testing is one of the
best ways to increase code quality" (51).

The chapter on text manipulation is brief, and discusses useful Python text
processing capabilities, such as built-in handling of JSON and CSV formats, and
regular expressions. While all of this can be used in a DevOps setting, there
is nothing specifically "DevOpsy" about it.

The requests chapter deals with creating API servers and handling calls to them.
There is a section on REST services, but it is not clear the author really
understands what distinguishes a RESTful service from one that is not REST, as
he doesn't discuss making the server not store application state.
(Instead he talks about idempotence, which is a different concept.)

We were not aware of Paramiko package for dealing with SSH through Python, so
including it was a nice discovery for us. But the author doesn't make it
completely clear why one would use Paramiko to SSH rather than a OS shell.

Salt Stack and Ansible are "infrastructure-as-code" tools. They are included in
this book because Salt can be scripted in Python, while Ansible is
scriptable (for inventories) and extensible in Python.

In his chapter on Docker, Zadka introduces DockerPy, a library for interfacing
with Docker through Python. Although we have been working with Docker for
several years, we did not know about this facility, so this chapter was a great
find for us. When trying to automate the creation and deployment of Docker
containers, it seems likely -- we haven't gotten a chance to try it yet! --
that DockerPy will be a major advance over the Docker CLI and shell scripts.
There is a similar package freely available for dealing with Amazon Web
Services, which also appears to be worth mastering.

There is a lot of useful information in this small book. The text could have
been cleaned up a bit more, but if you are a Python user looking to get into
DevOps, this book should prove very useful to you.
