/*
Don't give me five!

In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

Examples:

1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
The result may contain fives. ;-)
The start number will always be smaller than the end number. Both numbers can be also negative!

I'm very curious for your solutions and the way you solve it. Maybe someone of you will find an easy pure mathematics solution.

Have fun coding it and please don't forget to vote and rank this kata! :-)

I have also created other katas. Take a look if you enjoyed this kata!
*/

function dontGiveMeFive(start, end)

{
  var num_arr = [] //set empty num array

  for(let i=start; i<=end; i++) {
      if(extractFive(i)) {
       num_arr.push(i);
      }
  }
  console.log(num_arr.length);
}

function extractFive(number)
{
   var find_fives= number.toString().includes('5'); //change to string and find '5'
   return !find_fives //return strings with no '5's
}

dontGiveMeFive(1,9)
