import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_gestor/models/car_model.dart';

part 'car_event.dart';
part 'car_state.dart';


class CarBloc extends Bloc<CarEvent,CarState>{

  CarBloc():super(const CarInitialState()){

    on<ActivateCar>((event, emit) {
      
      log("emitido un carro nuevo");
      emit(CarSetState(event.car));

    },);

  }


}