/* Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return a or b.

Note: a and b are not ordered! */

// GetSum(1, 0) == 1   // 1 + 0 = 1
// GetSum(1, 2) == 3   // 1 + 2 = 3
// GetSum(0, 1) == 1   // 0 + 1 = 1
// GetSum(1, 1) == 1   // 1 Since both are same
// GetSum(-1, 0) == -1 // -1 + 0 = -1
// GetSum(-1, 2) == 2  // -1 + 0 + 1 + 2 = 2

/* Pseudo
- check if 2 numbers equal, return first arg
-  if not equal, add up both argument
*/

const GetSum = (num1, num2) => {
  let numArray = []
  if (num1===num2) {
    return num1
  }
  else if (num1 < num2) {
    for(let i = num1; i <= num2; i++) { //problem is here, when num1 is smaller than num2
     numArray = numArray.concat(i)
   }
  }
  else {
    for(let i = num2; i <= num1; i++) { //problem is here, when num1 is smaller than num2
     numArray = numArray.concat(i)
    }
  }
  return numArray.reduce( (arr, cur) => arr + cur, 0)
}

console.log(GetSum(1,0))
console.log(GetSum(-1,0))
console.log(GetSum(1,1))
console.log(GetSum(0,-1))
console.log(GetSum(-1, 2))

