part of "user_bloc.dart";


@immutable
abstract class UserState{

  //como quiero que luzca el estado inicial

  final bool existUser;
  final User? user;

  const UserState({this.existUser = false, this.user});


}


//estado inicial creacion
class UserInitialState extends UserState{

  const UserInitialState():super(existUser: false,user: null);

}


//crear estado de un nuevo usario
class UserSetState extends UserState{

  final User newUser;
  const UserSetState(this.newUser):super(existUser: true,user: newUser);

}