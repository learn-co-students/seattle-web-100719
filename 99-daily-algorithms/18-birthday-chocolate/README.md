# Birthday Chocolate

## Description

The concept is that someone has a chocolate bar, and this person wants to share the chocolate with another person in a way which specifically corrosponds to that person's birthday. 

The parameters for this algorithm are an array of numbers, an integer representing the day, and an integer representing the month. The array of integers represents a "chocolate bar" -- with the length of the array being how many squares of chocolate the bar contains, and each square being marked with an integer. 

In order to determine how to share the chocolate, the "length" of the bar (how many consecutive integers you may use from the array) must be equal to the month, and the numbers printed on each square of the bar used must add up to the day. 

For example, consider the following input:
```javascript
    let arr = [2,2,1,3,2]
    let day = 4
    let month = 2
```

In this case, there are two valid outputs, [2,2] and [1,3]. The reason for this is that the return arrays each have a length of 2, which matches the month provided, and a sum of 4, which matches the date provided. 

The output of the function should be **the number of ways that the algorithm can be solved.** In the above example, the output would be *2*.

## Constraints
* 1<= arr.length <= 100
* 1<= d <= 31
* 1<= m <= 12
* All integers in the array will be less than or equal to 5

## Examples

Input 1:
```
birthdayChocolate([1,2,1,3,2], 3, 2)
```
Output 1:
```
2
```

Input 2:
```
birthdayChocolate([1,1,1,1,1,1], 3, 2)
```
Output 2:
```
0
```

### Source: 
[HackerRank](https://www.hackerrank.com/challenges/the-birthday-bar/problem)