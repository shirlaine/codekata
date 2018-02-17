/* Get the number n to return the reversed sequence from n to 1.

Example : n=5 >> [5,4,3,2,1]

*/

//get i=1; i<=n; i++

const reverseSeq = n => {

  let rsArray = []
  for (let i=n; i>0; i--) {
    rsArray = rsArray.concat(i)
  }
  return rsArray

}

console.log(reverseSeq(5))
