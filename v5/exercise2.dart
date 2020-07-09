// Welcome again!
// Lesson 5) Exercise 2 (Functions) Solution

// Make a simple function which takes hours, minutes and seconds (or none!) and 
// returns the total number of seconds 

// Use {} to make the args named, so we can leave them out or include them as needed
int getTotalSeconds({int hours, int minutes, int seconds}) {
  // function body
  int totalSeconds = 0;

  // if a variable is null, don't do anything.  Otherwise, add it to the total seconds
  if (hours != null) {
    totalSeconds += hours * 60 * 60;
  }

  if (minutes != null) {
    totalSeconds += minutes * 60;
  }

  if (seconds != null) {
    totalSeconds += seconds;
  }

  // finally, return the totalSeconds
  return totalSeconds;
}

// to use our function, we need to call it in the main function
void main() {
  // Our functions return a value, but don't print anything, so we 
  // need to explicitly call print
  print(getTotalSeconds());
  print(getTotalSeconds(hours: 1));
  print(getTotalSeconds(minutes: 1));
  print(getTotalSeconds(seconds: 1));
  print(getTotalSeconds(hours: 2, minutes: 2, seconds: 2));

  // alternatively, we can store the value in a variable and print that
  // or use that variable elsewhere

  int totalSeconds = getTotalSeconds(hours: 2, minutes: 2, seconds: 2);
  print(totalSeconds);
}