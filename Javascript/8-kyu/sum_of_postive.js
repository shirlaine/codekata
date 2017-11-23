/*
You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20
*/

function positiveSum(arr) {

  let positiveNumArr = [];

  for(i=0 ; i < arr.length; i++){
    // check whther number positive
    if(Math.sign(arr[i])==1) {
      positiveNumArr.push(arr[i]);
    }
  }
  // summing using reduce method
  let sum = positiveNumArr.reduce(function(a,b){ return a + b }, 0);
  console.log(sum);
}

positiveSum([1,2,3,4,5]) //15
positiveSum([-1,2,3,4,-5]) //9
