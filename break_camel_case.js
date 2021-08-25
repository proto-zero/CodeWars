function solution(string) {
  // Variables
  let result = [];

  for (i = 0; i < string.length; i++){              // For each character in the string...
    if (string[i] != string[i].toUpperCase()){      // if that character is not uppercase...
      result.push(string[i]);                       // push that character into the result array.
    }
    else {                                          // If that character is in fact uppercase...
      result.push(` ${string[i]}`);                 // push a space followed by that character into result
    }
  }
  return result.join("");                           // Return result joined together
}
