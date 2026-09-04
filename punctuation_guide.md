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
## **~~~Other Marks~~~**
### *Exclamation Mark (!)*
Used for rules regarding document structure and comments\
Examples:
```xml
<!--This is a comment, not part of the code-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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