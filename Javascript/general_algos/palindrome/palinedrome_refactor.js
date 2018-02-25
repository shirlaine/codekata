//  Given a string, return true if the  string is a a palindrome or false if it is not. Palindromes are strings that for the same word if it is reversed.
// Examples:
// palindrome('abba') === true
// palindrome(abcdedg') === false

function palindrome(str) {

  //convert to array, reverse and join to string
  const reverse = str.split('').reverse().join('')

  // return boolean value
  return reverse === str

}

console.log(palindrome('abba'))
console.log(palindrome('abcdefg'))
console.log(palindrome('!poppop!'))

