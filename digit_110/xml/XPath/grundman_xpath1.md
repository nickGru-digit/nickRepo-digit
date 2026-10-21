# XPath Exercise 1 Answers
**1.** First, let's explore the CBML document in the Outline view in oXygen. (If you can't see the Outline view, go to Window >> Show View >> Outline.) Notice how the document is organized. Can you find the elements that hold a whole page, or "panel group" of the comic? The elements share this structure: ``` <div type="panelGrp">```. Write an XPath expression that finds all the elements that hold panel groups in this file.\
&emsp;&emsp;***a:*** ```//div[@type="panelGrp"]```\
**2.** Use the expression that you wrote to answer 1, and "step down the tree" to find all the panels. Record your XPath expression. Notice that you need to use the cbml: prefix here. That is because these elements for panels are inside the CBML namespace.\
&emsp;&emsp;***a:*** ```//div[@type="panelGrp"]/cbml:panel```\
**3.** Let's try narrowing down the results with an XPath predicate, written with [ ] in your expression.\
&emsp;&emsp;***q.1:*** Write an XPath that will return only the second panel group (literally the second whole page) in the document. You can use a position marker: [2]\
&emsp;&emsp;&emsp;***a.1:*** ```//div[@type="panelGrp"][2]```\
&emsp;&emsp;***q.2:*** Now, build on that expression to return only the <cbml:panel> elements inside that second panel group.\
&emsp;&emsp;&emsp;***a.2:*** ```//div[@type="panelGrp"][2]/cbml:panel```\
&emsp;&emsp;***q.3:*** How many results do you return?\
&emsp;&emsp;&emsp;&emsp;***a.3:*** ```2 results```\
**4.** Let's explore finding attributes. As you explore the XML, notice how characters are marked in the panels.\
&emsp;&emsp;***q.1:*** Write an XPath expression that returns all the values of the @characters attribute.\
&emsp;&emsp;&emsp;&emsp;***a.1:*** ```//div[@type="panelGrp"][2]/cbml:panel[@characters]```\
&emsp;&emsp;***q.2:*** How many results do you see?\
&emsp;&emsp;&emsp;&emsp;***a.1:*** ```2 results```\
**5.** Okay, usually we work with attributes to help filter elements. Let's say we want to find all the panels in which only the narrator is represented? Use an XPath predicate with [ ] to help return the panels that are only representing the narrator.\
&emsp;&emsp;***a:*** ```//div[@type="panelGrp"][2]/cbml:panel[@characters eq "#narrator"]```\
**6.** The ```<floatingText>``` element in CBML is a pretty exciting application of the TEI. It lets you nest a whole new "document" inside any level of the text you want. How are these useful in CBML? Let's take a look at them?\
&emsp;&emsp;***q.1:*** How many ```<floatingText>``` elements do you see?\
&emsp;&emsp;&emsp;&emsp;***a.1:*** ```41 elements```\
&emsp;&emsp;***q.2:*** What kind of content do you think is being described here? (Take a guess if you're not sure--I know you can't see the whole comic.)\
&emsp;&emsp;&emsp;&emsp;***a.2:*** ```I think it's text outside of speech bubbles, like a label on a briefcase```\
&emsp;&emsp;***q.3:"*** How many panel elements contain floatingText elements? Write an XPath expression that uses a predicate [ ] to return only the <cbml:panel> elements that have a ```<floatingText>``` element inside.\
&emsp;&emsp;&emsp;&emsp;***a.3:*** Using ```//cbml:panel[floatingText]```, 26 panels contain floatingText\
&emsp;&emsp;***q.4:*** You can see the number of results in the return window, but let's try adding a function to your expression. Try applying the count() function to return a count of the number of panels that include floatingText.\
&emsp;&emsp;&emsp;&emsp;***a.4:*** ```count(//cbml:panel[floatingText])```