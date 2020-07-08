// Make a simple program that prints out how many hours, minutes and seconds are in a number of seconds.
// int seconds = 120
// 2 minutes, 0 seconds.
// % print $ 

// Every program must have a main function, this is where everything runs
void main() {
  // Change this variable
  int seconds = 123;

  // show only the seconds.  Leave out anything over 60, as that will go
  // into minutes and hours
  int displaySeconds = seconds % 60;

  // calculate only the minutes to display, leaves out anything over 60
  int minutes = seconds ~/ 60 % 60;

  // calculate the hours from seconds.  We must use seconds,
  // not our minutes variable, because our minutes variable has % 60
  // at the end, it does NOT contain the hours
  int hours = seconds ~/ 60 ~/ 60;

  // use string interpolation to print our output
  print('$hours hours, $minutes minutes, $displaySeconds seconds');
}