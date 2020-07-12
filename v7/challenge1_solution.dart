const MAX_HEIGHT = 70;

String buildPyramid(String char, int height, {bool twoSides = false}) {
  /// Builds a beautiful pyramid
  /// Character must be of length 1
  /// height must be over 1 and less than 50
  /// If twoSides = true, the pyramid will be mirrored 
  String whiteSpaces = '';
  String returnString = '';

  // custom string if character of wrong length
  // execution will stop at first return statement
  if (char.length != 1) {
    return "Character must be of length 1";
  }

  // stop execution if wrong height provided
  if (height < 1 || height > MAX_HEIGHT) {
    return "baseLength must be between 1 and $MAX_HEIGHT";
  }

  // loop over the height, with 1 iteration being 1 line of output
  for (int i = 0; i < height; i++) {
    // creates correct whitespace
    whiteSpaces = ' ' * (height - i - 1);
    // add whitespace to the return string
    returnString += whiteSpaces;
    // add the character to the returnstring
    returnString += char * (i + 1);

    // if twosides...
    if (twoSides) {
      // add two white spaces 
      returnString += '  ';
      // add character to white space again
      returnString += char * (i + 1);
      // we dont' need whitespace after
    }

    // add a newline
    returnString += '\n';
  }

  // finished.  Return the string
  return returnString;
}

String buildPyramidLongCharBroken(String char, int height, {bool twoSides = false}) {
  String whiteSpaces = '';
  String returnString = '';

  // if (character.length != 1) {
  //   return "Character must be of length 1";
  // }

  if (height < 1 || height > MAX_HEIGHT) {
    return "baseLength must be between 1 and $MAX_HEIGHT";
  }

  for (int i = 0; i < height; i++) {
    whiteSpaces = ' ' * (height - i - 1);
    returnString += whiteSpaces;
    returnString += char * (i + 1);

    if (twoSides) {
      returnString += '  ';
      returnString += char * (i + 1);
    }

    returnString += '\n';
  }

  return returnString;
}

String buildPyramidLongCharFixed(String char, int height, {bool twoSides = false}) {
  // dynamic max height
  final int LOCAL_MAX_HEIGHT = MAX_HEIGHT ~/ char.length;
  String whiteSpaces = '';
  String returnString = '';

  // if (character.length != 1) {
  //   return "Character must be of length 1";
  // }

  if (height < 1 || height > MAX_HEIGHT) {
    return "baseLength must be between 1 and $MAX_HEIGHT";
  }

  for (int i = 0; i < height; i++) {
    whiteSpaces = ' ' * char.length * (height - i - 1);
    returnString += whiteSpaces;
    returnString += char * (i + 1);

    if (twoSides) {
      returnString += '  ';
      returnString += char * (i + 1);
    }

    returnString += '\n';
  }

  return returnString;
}

// testing our code
void main() {
  print(buildPyramid('#', 10));
  print(buildPyramid('#', 10, twoSides: true));
  print(buildPyramid('/', 50, twoSides: true));
  print(buildPyramid('#', 51));
  print(buildPyramid('Ovidius', 20, twoSides: true));

  print(buildPyramidLongCharBroken('Ovidius', 25, twoSides: true));
  print(buildPyramidLongCharFixed('Ovidius', 10, twoSides: true,));
}