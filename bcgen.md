# Review of BCGen: a comment generation method for bytecode

By Yuan Huang, Jinbo Huang, Xiangping Chen, Kunning He and Xiaocong Zhou

*Automated Software Engineering*, 2023, 30:5

https://doi.org/10.1007/s10515-022-00374-6

Keywords: software engineering, bytecode, compilation, automated software engineering

The authors have undertaken a project to make bytecode more readable by interspersing it with machine-generated
comments. There are two salient questions regarding this project:
1. Did they (at least mostly) succeed?
2. To the extent that they did succeed, will these comments actually prove useful?

An important factor to consider here is that often a bad comment may be more harmful than nine good comments are helpful.
In the absence of a good comment, a programmer can at least read the code and see what it does. But a bad comment may
actively mislead the programmer, and, thinking they know what is going on, they misunderstand the code. Thus, even if
automatic comment generation is, say, 90% accurate, it still may do more harm than good.

The authors spend some time explaining how they tested their project. They searched Maven (a build tool for Java)
repositories.
After rejecting certain repositories as inappropriate, due to their lacking either byte codes or source code with
comments, the authors also worked to eliminate most templates, since they are not truly independent instances to use in
training the machine learning model.

But the paper is less than clear on what they did to detect templates. They write, "Assuming that \<\>
represents any character, then the sentences 'get the type of error' and 'get the type of event' can be represented by
the template 'get the type of \<\>'" (7). I must admit that this sentence is entirely opaque to me.

In any case, 55,130 bytecode-comment pairs were collected for machine learning. The authors extracted information from the
tokens contained in the bytecode. They used a clever method of reducing the number of tokens they considered by
taking advantage of Java's typical camel case variable naming.

The byte codes could be treated as plain text, but this would lose much structural information. To deal with this fact,
the authors introduce a control-flow-graph representation of the bytecode.

The authors take some time describing their experimental set up, in which they compare their project against several other
natural language processing models. The evaluation criterion is how similar the comments each method generates are to the original source code
comments. They find their model performs significantly better than the state-of-the-art baselines. And when the comments
generated were rated by human programmers, the BCGen model also outperformed its rivals. Nevertheless, neither the scores for
both similarity of the generated comments to the original comments, nor the scores assigned by
the humans, were particularly high, meaning many of the comments were not good.

So this brings us back to question two from the beginning of the review:
Is the activity of automated comment generation actually helpful to working engineers?
Unfortunately, the authors do not address this point. Furthermore, for the activities in which by code
analysis is used, they do not show that interspersing the bytecode with comments is even
*potentially* helpful. For instance, in detecting malware, one is dealing with code that is *intentionally deceptive*. Comments
automatically generated from such code would seem likely to be derivatively deceptive, and thus of little help in
the task at hand.

In summary, this is a very interesting project that has improved the state of the art in automated comment generation.
But whether it will have practical benefits remains to be seen.



