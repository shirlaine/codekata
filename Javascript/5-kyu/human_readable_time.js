/*Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59
The maximum time never exceeds 359999 (99:59:59)

You can find some examples in the test fixtures.*/


function humanReadable(seconds) {

  var hours = Math.floor(seconds/3600); //1 hr 3600 seconds
  var minutes = Math.floor((seconds - hours*3600)/60); // 1 min 60 seconds
  var secs = Math.floor(seconds - hours*3600 - minutes*60); //remainder seconds

  // if hours < 10, 0 in front
  // else if hr >= 10 just put hours as is

  if (hours < 10) {
    var col_hours = `0${hours}:`
  } else if (hours >= 10) {
    var col_hours = `${hours}:`
  }

  if (minutes < 10) {
    var col_minutes = `0${minutes}:`
  } else if (minutes >= 10) {
    var col_minutes = `${minutes}:`
 /* do the right thing */
  }

  if (secs < 10) {
    var col_secs = `0${secs}`
  } else if (secs >= 10) {
    var col_secs = `${secs}`
 /* do the right thing */
  }

  console.log(`${col_hours}${col_minutes}${col_secs}`);
  }

// humanReadable(60)//'00:01:00'
// humanReadable(3600) // '01:00:00'
// humanReadable(3660) // '01:01:00'
// humanReadable(3666) // '01:01:06'
// humanReadable(324000) //
// humanReadable(86399)// '23:59:59'
humanReadable(359999)//'99:59:59'
