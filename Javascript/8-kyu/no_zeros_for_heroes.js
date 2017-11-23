/*
Numbers ending with zeros are boring.

They might be fun in your world, but not here.

Get rid of them. Only the ending ones.

1450 -> 145
960000 -> 96
1050 -> 105
-1050 -> -105
*/

function zero(num) {

  let num_string = String(num).split('') //make array of numbers in string
  //check last el of array, whether == '0'
  while(num_string[num_string.length-1]=='0') {
     num_string.pop(); //remove if while(true)
   }
     console.log(Number(num_string.join(''))); //change array to string to number

}

zero(1450)
zero(960000)
zero(1050)
zero(-1050)
zero(0)

