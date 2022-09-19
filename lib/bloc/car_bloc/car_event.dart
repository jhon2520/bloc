part of "car_bloc.dart";


abstract class CarEvent{}


class ActivateCar extends CarEvent{

  final CarModel car;

  ActivateCar(this.car);

}
