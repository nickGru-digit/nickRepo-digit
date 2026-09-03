# **Punctuation Marks in XML (a short guide)**
## **~~~Tag Marks~~~**
### *Angle Brackets (< and >)*
Used to mark the beginning and end of tags
### *Forward Slash (/)*
Used to close a tag\
Examples:
```xml
<tag>Content<tag/>
<self-closing-tag/>
``` 
## **~~~Attribute Marks~~~**
### *Equal Sign (=)*
Used to assign attributes values
### *Quotation Marks ("")*
Used to denote the value of an attribute\
Examples:
```xml
<tag element="information"><tag/>
<self-closing-tag id="identifier"/>
```
## **~~~Symbols in Content~~~**
If you want to use any of these symbols in the content of an element, the syntax is pretty simple:
```xml
&amp; (for &)
&lt; (for <)
&gt; (for >)
&quot; (for ")
&apos; (for ')
```
Other symbols should work fine in text content, but all punctuation aside from underscores, hyphens, and periods are prohibited in tag names