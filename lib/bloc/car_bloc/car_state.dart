part of "car_bloc.dart";

abstract class CarState{

  final bool existCar;
  final CarModel? car; 

  const CarState({this.existCar = false,this.car});

}

class CarInitialState extends CarState{

  const CarInitialState():super(existCar: false,car: null);

}


class CarSetState extends CarState{

  final CarModel newCar;

  const CarSetState(this.newCar):super(existCar: true,car: newCar);

}