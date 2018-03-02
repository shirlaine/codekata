// Given an integer, return an integer that is the reverse ordering of numbers .

//reverseInt(15) //51
//reverseInt(981) //189
//reverseInt(500) //5
//reverseInt(-15) //-51
//reverseInt(-90) //-9

const reverseInt = (num) => {

    let numAbs = Math.abs(num)  //convert all to positive
    let numArr = []
    numAbs= numAbs.toString().split('') //convert number to string, split to arry
    for (let char of numAbs) { //check for zeroes in array, remove if present
      if (char!=='0') {
      numArr=numArr.concat(char)
      }
    }
    numArr = parseInt(numArr.reverse().join('')) //reverse el in array, convert string, convert to numbers

    if(num>=0) {  //check if initial number negative or positive and return accordinly
      return numArr
    } else {
      return -numArr
    }

}

console.log(reverseInt(15)) //51
console.log(reverseInt(981)) //189
console.log(reverseInt(500)) //5
console.log(reverseInt(-15)) //-51
console.log(reverseInt(-900)) //-9
