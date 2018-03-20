// Find the longest word in a string
// E.g., longestWord("The quick brown fox jumped over the lazy dog")

function longestWord(str) {

  const strArr = str.split(' ') // split into array
  let emptyArr = []

  for (let word of strArr) {
     emptyArr = emptyArr.concat(word.length) // count length of each word, in array form
  }

  return Math.max.apply(null, emptyArr) // return largest number in array

}

console.log(longestWord('The quick brown fox jumped over the lazy dog'))
