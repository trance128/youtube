abstract class Action{}

class Convert extends Action{}

class UpdateKm extends Action {
  String payload;

  UpdateKm(
    this.payload,
  );
}

class UpdateKmCleaned extends Action {
  String payload;

  UpdateKmCleaned(
    this.payload,
  );
}

class UpdateMiles extends Action {
  String payload;

  UpdateMiles(this.payload);
}