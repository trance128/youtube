abstract class Action{}

class Convert extends Action{}

class UpdateKm extends Action {
  String payload;

  UpdateKm(
    this.payload,
  );
}
