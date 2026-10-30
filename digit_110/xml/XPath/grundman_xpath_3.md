# XPath Exercise 3 Answers
**1.**
```sql
a. //div/count(*) counts the number of items directly in each div
b. //div/*/count(*) counts the number of items inside each element in each div
```
**2.**
```sql
a. max(//div/*/count(*))
returns 1112

b. min(//div/*/count(*))
returns 3
```
**3.**
```sql
a. //div/*[count(./*) eq 1112]
returns histPersons
b. **(CHALLENGE)** //div/*[count(./*) eq max(//div/*/count(*))]
```
**4.**
```sql
a. distinct-values(//occupation/@type)
b. count(distinct-values(//occupation/@type))
returns 15 distinct occupations
```
**5.**
```sql
a. //occupation[@type="artist"]
b. //occupation[@type="artist"]/..
c. //occupation[@type="artist"]/..[@sex="f"]
d. //occupation[@subtype="engraver"]
e. //occupation[@subtype="engraver"]/../birth[@when = string(1787)]
William Finden is our engraver born in 1787
f. //occupation[@subtype="engraver"]/../birth/@when
g. (//occupation[@subtype="engraver"]/.. ! birth/@when => sort())[1]
1667 is the earliest year an engraver mentioned in the text was born
```
**6.**
```sql
a. //div/descendant::* ! name()
returns 42095 items
b. //div/descendant::* ! name() => distinct-values() => count()
returns 55 distinct names
```