import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/user.dart';


part 'user_event.dart';
part 'user_state.dart';


class UserBloc extends Bloc<UserEvent,UserState>{

  UserBloc():super(const UserInitialState()){

    //la función que se va a ejecutar cuando se recibe un evento de tipo activeUser
    // el emit sirve para emitir un nuevo estado de manera condicional validando información válidad
    on<ActivateUser>(((event, emit) {
      log("Activate user called");
      //emitir estado
      emit(UserSetState(event.newUSer));
    }));


    //interacción para cambiar la edad del usuario
    on<ChangeUserAge>((event, emit) {
      log("changeUserAge called");
      //el state lo tengo disponible por extender del bloc. Se valida que exista usuario antes de cambiar usuario
      if(!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(edad: event.edad)));
    });

    //agregar profession
    on<AddUserProfession>((event, emit) {
      
      if(!state.existUser) return;

      log("Agregando profesion");
      emit(UserSetState(state.user!.copyWith(profesiones: [...state.user!.profesiones, event.newProfession])));

    });


    //eliminar usuario
    on<DeleteUSer>((event, emit) {
      emit(const UserInitialState());
    });


    on<AddUserSecondName>((event, emit) {
      
      if(!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(nombre: state.user!.nombre + event.seconName)));

    });

  }



}