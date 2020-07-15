// Welcome Again to The Complete (FREE) Flutter Course
// Presented by, Ovidius Mazuru

// Module 1, Lesson 10) Exercise 3 Solution

// create an automated list hours by 15 -- 00:00, 00:15 etc.... 23:45
// % ${}  if ... ? :

List<String> getListOfQuarterHours() {
  List<String> quarters = ["00", "15", "30", "45"];
  List<String> returnList = [];
  String tempStr;
  int hours;

  for (int i = 0; i < 24 * 4; i++) {
    hours = i ~/ 4;
    if (hours > 0) {
      tempStr = '${hours > 9 ? hours : '0$hours'}:';
    } else {
      tempStr = '00:';
    }

    tempStr += quarters[i % 4];

    // 00:00
    returnList.add(tempStr);
  }

  return returnList;
}

void main() {
  List<String> myList = getListOfQuarterHours();
  myList.forEach((element) {
    print(element);
  });
  // print(myList);
}
