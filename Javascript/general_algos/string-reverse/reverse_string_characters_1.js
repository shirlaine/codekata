/* Reverse the characters of a string
E.g.,
reverse('apple') //'elppa'
reverse('hello') //'olleh'
reverse('Greetings!') //'!sgniteerG'
*/

//1
// assign variable arr to an empty []
// turn string to an array (str.split(''))
// reverse the array sequence using reverse()
// turn the array back into a string using join()

function reverse(str) {
  let arr = []
  arr= str.split('')
  return arr.reverse().join('')
}

console.log(reverse('apple')) //'elppa'
console.log(reverse('hello')) //'olleh'
console.log(reverse('Greetings!')) //'!sgniteerG'
