// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

describe('codedMessage', () => {
    it('takes in a string and returns a string with a coded message', () => {
        expect(codedMessage(secretCodeWord1)).toBe("L4ck4d41s1c4l")
        expect(codedMessage(secretCodeWord2)).toBe("G0bbl3dyg00k")
        expect(codedMessage(secretCodeWord3)).toBe("3cc3ntr1c")
    })
})

// Output --> ReferenceError: codedMessage is not defined

// b) Create the function that makes the test pass.
// Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// const codedMessage = (string) => {
//     let newString = ''
//     for (let i = 0; i < string.length; i++) {
//         const letter = string[i]
//         if (letter === 'a') {
//             newString += '4'
//         } else if (letter === 'e' || letter ==='E') {
//             newString += '3'
//         } else if (letter === 'i') {
//             newString += '1'
//         } else if (letter === 'o') {
//             newString += '0'
//         } else {
//             newString += letter
//         }
//     }
//     return newString
// }

// OUTPUT: PASS -->  ✓ takes in a string and returns a string with a coded message (4 ms)

// Pseudo code:
// Input: A string
// Output: The same string as input but with letters "a" to 4, "e" to 3, "i" to 1, and "o" to 0.
// Create a function called codedMessage with 'string' as it's parameter.
    // Create a new variable called newString that has an empty string to be used for the upcoming conditional statements.
    // Create a for loop that starts at index 0; ends at length of the string, and increments by 1.
    // Create a variable for use in this for loop. Focusing on the letters of the string, letter = string[i] so we can focus on the index of the letters to add onto variable newString. Essentially newString = string in the for loop conditional statements.
        // Start the conditional statement. If the letter stricly equals to a, return newString with 'a' changed to '4'.
        // Else if letter strictly equals to e and utilizing a logical or, if letter equals 'E', return newString with e/E to be '3'.
        // Else if letter is stricly equal to 'i', retur newStrung with 'i' to be '1'.
        // Else if letter is stricly equal to 'o', return newString with 'o' to be '0'.
        // ELSE if none of the above is true, return newString with all the index values of string (as per new variable string states).
    // return newString that has now been updated.

// REFACTOR? Maybe?

const codedMessage = (string) => {
    return string.split('').map(letter => {
        const replLetter = {
            'a': '4',
            'e': '3',
            'i': '1',
            'o': '0',
            'E': '3'
        }
        return replLetter[letter] || letter
    })
    .join('')
}

    
// OUTPUT: PASS -->  ✓ takes in a string and returns a string with a coded message (4 ms)

// Pseudo code:
// Create a function named codedMessage with string as it's parameter.
    // Return the string, have it turn into an array with each letter as it's own index utilizing .split, and then iterate through it utilizing .map to keep the same length. Using letter as a represent the characters being looped through.
        // Create an object called replLetter that will utiize letters aeEio as it's keys and 43310 as it's values and replacement.
            // NOTE: This took some time to understand and I will admit in saying it still confuses me a bit but I wanted to try this out. I came upon a forum that had examples that in a conditional for objects, values can be pulled (technically replace its keys but not really?) as its return. I would love to understand this more. 
        // Return: check if aeEio is present in letter and if it is, return it's value. LOGICAL OR (essentially an ELSE), return letter if letter is not a key in replLetter.
    // Utilize .join to turn the array back into a string.


// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

describe('fullHouseOrNot', () => {
    it('takes in an array of 5 numbers and determines whether or not the array is a full house', () => {
        expect(fullHouseOrNot(hand1)).toBe(true)
        expect(fullHouseOrNot(hand2)).toBe(false)
        expect(fullHouseOrNot(hand3)).toBe(false)
        expect(fullHouseOrNot(hand4)).toBe(true)
    })
})

// Output:  ReferenceError: fullHouseOrNot is not defined

// b) Create the function that makes the test pass.

function fullHouseOrNot(array) {  
    const sameCards = {}
    for (const card of array) { // Self Note: const hand1 = [5, 5, 5, 3, 3], first iteration: card is 5, second iteration: card is 5, third iteration: card is 5, fourth iteration: card is 3, fifth iteration: card is three.
      if (sameCards[card]) {
        sameCards[card]++
      } else {
        sameCards[card] = 1
      }
    }
    const finalCount = Object.values(sameCards)
    return (
      (finalCount.includes(2) && finalCount.includes(3))
    )
}

// Output: PASS --> fullHouseOrNot ✓ takes in an array of 5 numbers and determines whether or not the array is a full house (1 ms)

// Pseudo code:
// Input: An array with 5 numbers.
// Output: Boolean Value of true or false.
// Create a function called fullHouseOrNot with array as it's parameter.
    // Create an empty object called sameCards. This will be used to keep track of how many times a card is shown. Ex. { 5: 3 }, card 5 is showned 3 times.
    // Create a for loop that creates a new variable called card which will iterate through the parameter 'array'.
        // Create a conditional: IF the card in the array is already in object sameCards as a key, increment by 1 with ++.
        // ELSE (if it is not yet in object sameCards), add it as key and 1 for value.
    // Create a new variable called finalCount which will pull the values (Object.values) of the Object sameClass. 
    // Return: check if finalCount has values 2 and 3 in it by utilizing .includes(). If it does, return true. If it doesn't, return false.
        

