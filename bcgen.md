# Review of BCGen: a comment generation method for bytecode

By Yuan Huang, Jinbo Huang, Xiangping Chen, Kunning He and Xiaocong Zhou

*Automated Software Engineering*, 2023, 30:5

https://doi.org/10.1007/s10515-022-00374-6

Keywords: software engineering, bytecode, compilation, automated software engineering


" and then call the instance constructor method, the private method or the method of its parent class of this subject right now" (5)


"It shows that bytecode instructions mainly contain information about program execution." (5)

Is this something that really needs to be demonstrated? in fact, did the bytecode instructions ever contain information about anything other than program execution? (Perhaps they do, but it would be nice to hear about what it is from the authors.)



Maven repository is processed.

After rejecting certain repositories as inappropriate, due to the lacking, both bike codes and source code with comments, the author is also work to eliminate most templates, since they are not truly independent instances to use in training the machine learning model.

But again, the paper is far less than clear on what they did to detect templates. They write, "Assuming that <> represents any character, then the sentences 'get the type of error' and 'get the type of event' can be represented by the template 'get the type of <>'" (7). I must admit that this sentence is entirely opaque to me.



55,130 bytecode-comment pairs collected for machine learning

Authors extract information from the tokens contained in the bytecode code area. They use a clever method of reducing the number of tokens they consider by taking advantage of Java's typical camel case variable, naming, and the existence of '.' in token names.

The bite codes could be treated as plain text, but this would lose much structural information. To deal with this fact, the authors introduce a control-flow-graph representation of the bytecode.

"Bytecode files are unreadable binary files."

Well, no, they are not: if they were, then the authors could not do anything with them. What they are is difficult to read binary files.


