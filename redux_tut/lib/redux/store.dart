class AppState {
  String km;
  String miles;

  AppState({
    this.km,
    this.miles,
  });
  
  AppState.copyWith({AppState prev, String km, String miles}) {
    this.km = km ?? prev.km;
    this.miles = miles ?? prev.miles;
  }

  AppState.initial() {
    this.km = "0";
    this.miles = "0";
  }
}
