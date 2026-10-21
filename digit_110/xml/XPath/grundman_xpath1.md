# CBML XPath Questions
1. First, let's explore the CBML document in the Outline view in oXygen. (If you can't see the Outline view, go to Window >> Show View >> Outline.) Notice how the document is organized. Can you find the elements that hold a whole page, or "panel group" of the comic? The elements share this structure: ```xml <div type="panelGrp">```. Write an XPath expression that finds all the elements that hold panel groups in this file.\
    a.//div[@type="panelGrp"]
2. Use the expression that you wrote to answer 1, and "step down the tree" to find all the panels. Record your XPath expression. Notice that you need to use the cbml: prefix here. That is because these elements for panels are inside the CBML namespace.\
    a.//div[@type="panelGrp"]/cbml:panel
3. Let's try narrowing down the results with an XPath predicate, written with [ ] in your expression.\
    a. //div[@type="panelGrp"][2]\
    b. //div[@type="panelGrp"][2]/cbml:panel\
    c. This returns 2 results
4. Let's explore finding attributes. As you explore the XML, notice how characters are marked in the panels.\
    a. Write an XPath expression that returns all the values of the @characters attribute.\
        a.1. //div[@type="panelGrp"][2]/cbml:panel[@characters]\
    b. How many results do you see?\ 
        b.1 There are 2 results\