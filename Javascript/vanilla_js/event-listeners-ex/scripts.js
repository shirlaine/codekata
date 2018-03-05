"use strict";

//remove event listener after 5 clicks
const button = document.querySelector('button')

const buttonCallback = (e) => {
  if (e.detail <= 5) {
  console.log('Button is clicked'+ e.detail)
  } else {
  button.removeEventListener('click', buttonCallback)
  console.log('Button click is removed') }
}

button.addEventListener('click', buttonCallback)


//remove event listener after 1 click
// const listenOnce = e => {
//   console.log('Button is clicked')
//   e.currentTarget.removeEventListener('click', listenOnce)
// }

// const button = document.querySelector('button')
// button.addEventListener('click', listenOnce)


//remove default action example
// const list = document.querySelector('ul')
// const checkBox = list.children[5]
// checkBox.addEventListener('click', e => {
//  e.preventDefault()
//  console.log('Clicked to prevent default behaviour')
// })
