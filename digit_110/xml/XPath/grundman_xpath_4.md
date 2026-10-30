# XPath Exercise 4 Answers
**1.**
```ruby
a. //cbml:panel/@characters => distinct-values()
No, since the characters are space-separated, this isn't actually all the distinct values of @character, returning 39 items
```
**2.**
```ruby
a. //cbml:panel/@characters ! tokenize(.) => distinct-values()
Now distinct-values is working as intended, returning 23 items
```
**3.**
```ruby
a. //cbml:panel[contains(@characters, "drkelly")]
This returns 5 items
b. //cbml:panel/@characters ! tokenize(.)[starts-with(., "#dr" )]
This also returns 5, but I had to tokenize it to get it to count instances where drkelly is not mentioned first in the list
```
**4.**
```ruby
a. //cbml:balloon ! string-length() => max()
There are 71 different balloons! The longest one is 215 characters
b. //cbml:balloon[string-length() = //cbml:balloon ! string-length() => max()]
Doctor Kelly gives the longest speech
c. //cbml:balloon[string-length() = //cbml:balloon ! string-length() => min()]
Kaliman gives the shortest with only 5 characters
```
**5.**
```ruby
a. //cbml:panel/note[contains(., "skull")]
b. The first expression is not doing its job and returns every div because the expression inside the predicate simply returns "true," as there is a cbml:balloon with "NO" in it somewhere in the text.
The second expression forces it to only check for a cbml:balloon *inside* the div itself, rather than anywhere, resulting in it correctly returning only the divs that have the word "NO" in a balloon somewhere.
```