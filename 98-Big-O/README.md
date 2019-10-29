# Big O Notation
*It can be used to measure the time and space complexity of any program or algorithm. It's likely that potential interviewers will be more focused on time complexity.*

## O(1)
-   "Constant Time"
-   The time complexity does not increase regardless of the size of the input.
-   **Example:** array[n], or any *puts* statement.

## O(n)
-   "Linear Time"
-   Directly porportional to size of collection.
-   **Example:** any iterator, such as .each, .map, .select, etc.

## O(n^2)
-   "Quadratic Time"
-   Time complexity is exponentially greater than the size of the collection. This is usually not ideal, but it's totally fine to solve an algorithm this way the first time and think through other ways to solve it with a refactor.
-   **Example:** an iterator inside of an iterator. Any nested iterations. 