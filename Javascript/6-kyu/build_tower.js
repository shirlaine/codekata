/*
Build Tower

Build Tower by the following given argument:
number of floors (integer and always greater than 0).

Tower block is represented as *

Python: return a list;
JavaScript: returns an Array;
C#: returns a string[];
PHP: returns an array;
C++: returns a vector<string>;
Haskell: returns a [String];
Have fun!

for example, a tower of 3 floors looks like below

[
  '  *  ',
  ' *** ',
  '*****'
]
and a tower of 6 floors looks like below

[
  '     *     ',
  '    ***    ',
  '   *****   ',
  '  *******  ',
  ' ********* ',
  '***********'
]

*/

function towerBuilder(floors) {
  // build here
  let building =[]
  let x= '*'
  let y= ' '
  for(i = 1; i <= floors; i++){
    building.push(`${y.repeat(floors-1)} ${x.repeat(2*i-1)}${y.repeat(floors-1)}`);
  }

  console.log(building);
}



// JSON.stringify(towerBuilder(1)) //JSON.stringify(["*"]));
// JSON.stringify(towerBuilder(2)) //JSON.stringify([" * ","***"]));
JSON.stringify(towerBuilder(3))//JSON.stringify(["  *  "," *** ","*****"]));
