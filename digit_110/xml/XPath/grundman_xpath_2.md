# XPath Exercise 2 Answers
**1.**
```sql
//div[@type="historical_people"]
```
**2a.**
```sql
//div[@type="historical_people"]/*
```
**2b.**
```sql
//div[@type="art"]/*
```
**2c.**
```sql
//div/* => count() 
There are 20 possible children for a div to hold
```
**3a.**
```sql
//list[@sortKey="animals"]/* => count()
There are 69 animals mentioned
```
**3b.**
```sql
//list[@sortKey="animals"]/*[last()]
The last animal in the list is a crested wren
```
**3c.**
```sql
//list[@sortKey="plants"]/*[5]
The fifth plant in the list is an apple tree
```
**3d.**
```sql
//list[@sortKey="plants"]/*[position() le 6]
```
**4.**
```sql
//person/occupation[1] returns 936 values, each of which is the first occupation of each person listed with any number of occupations in the xml

(//person/occupation)[1] returns just one value, the very first person listed with an occupation in the document

The parentheses force the predicates to look at the first person with an occupation rather than the first occupation of every person
```
**5a.**
```sql
//person => count()
There are 1552 people in this document
```
**5b.**
```sql
//person[@sex] => count()
No. This function returns only 1393 people, meaning 159 people are not listed with a sex
```
**5c.**
```sql
//person[@sex] => count() div //person => count() returns 0.89755
//person[@sex] => count() div //person => count() * 100 returns 89.755
Meaning, 89.76% of the people listed have a sex recorded
```
**5d.**
```sql
//person[@sex="f"] => count() div //person[@sex] => count() * 100 returns 29.720
Meaning, only 29.72% of the people mentioned in the text who have a gender marked are coded as female sex
```
