/*
Implement a function named generateRange(min, max, step), which takes three arguments and generates a range of integers from min to max, with the step. The first integer is the minimum value, the second is the maximum of the range and the third is the step. (min < max)

Task

Implement a function named

generateRange(2, 10, 2) // should return array of [2,4,6,8,10]
generateRange(1, 10, 3) // should return array of [1,4,7,10]
, which takes three arguments and generates a range of integers from min to max, with given step. The first is minimum value, second is maximum of range and the third is step.

*/

function generateRange(min, max, step) {

  for (i = min; i<=max; i+=step) {
    console.log(i);
  }

}

generateRange(2, 10, 2) // [2,4,6,8,10]
generateRange(1, 10, 3) //[1,4,7,10]

