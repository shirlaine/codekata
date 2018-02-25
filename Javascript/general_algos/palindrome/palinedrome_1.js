//  Given a string, return true if the  string is a a palindrome or false if it is not. Palindromes are strings that for the same word if it is reversed.
// Examples:
// palindrome('abba') === true
// palindrome(abcdedg') === false

function palindrome(str) {

  //convert to array
  const strArr = str.split('')

  //reverse array in new var
  const reverseArr= strArr.reverse()

  //convert back to string. arr1 !== arr2
  const reverseStr=reverseArr.join('')

  // match to initial str
  if (str === reverseStr) {
    return true
  } else {
    return false
  }

}

console.log(palindrome('abba'))
console.log(palindrome('abcdefg'))
console.log(palindrome('!poppop!'))

