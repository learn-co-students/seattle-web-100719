# Rounding Grades
HackerLand University has the following grading policy:

* Every student receives a grade in the inclusive range 0 from  to 100.
* Any grade less than 40 is a failing grade.

Grades are rounded according to these rules:

* If the difference between the grade and the next multiple of 5
  is less than 3 then round the grade up to the next multiple of 5.
* If the value of grade is less than 38 do not round it because it
  is still a failing grade.

For example, grade 84 is rounded up to 85, but grade 29 is not rounded
because the result would be less than 40 (a failing grade).

Given the initial value of grade for each student round each of their grades.

## Example

#### Input
```
[73, 67, 38, 33]
```

#### Output
```
[75, 67, 40, 33]
```

## Source
[HackerRank](https://www.hackerrank.com/challenges/grading/problem)
