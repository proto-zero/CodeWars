function removeUrlAnchor(url){
  // Variables
  let result = ""

  // For Loop
  for (i = 0; i < url.length; i++){   // For each character in url...
    if (url[i] != "#"){               // if that character isn't a #...
      result += url[i];               // add that character to the result string
    } else {                          // If that character is a #...
      return result;                  // return result without adding anything more to it
    }
  }

  // Result
  return result;                      // If there is no # present, return the entire result
}

function removeUrlAnchor(url){
  return url.split('#')[0];
}
