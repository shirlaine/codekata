/* Reverse the characters of a string
E.g.,
reverse('apple') //'elppa'
reverse('hello') //'olleh'
reverse('Greetings!') //'!sgniteerG'
*/

//2
// assign variable reversedString for empty string
// for loop => take each element
// push into start of empty string (i.e, push elements backward)
// return reversedString

function reverse(str) {
  let reversedString = ''
  for (let i = str.length; i >= 0; i--) {
    reversedString= reversedString.concat(str.charAt(i))
  }
    return reversedString
}

console.log(reverse('apple')) //'elppa'
console.log(reverse('hello')) //'olleh'
console.log(reverse('Greetings!')) //'!sgniteerG'
