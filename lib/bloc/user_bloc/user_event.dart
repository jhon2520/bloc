part of "user_bloc.dart";

@immutable
abstract class UserEvent{}


//evento para activar usuario
class ActivateUser extends UserEvent{

  final User newUSer;

  ActivateUser(this.newUSer);

}

//evento para cambiar edad
class ChangeUserAge extends UserEvent{
  final int edad;

  ChangeUserAge( this.edad);
}


//evento agregar profesion
class AddUserProfession extends UserEvent{
  final String newProfession;

  AddUserProfession(this.newProfession);

}

class DeleteUSer extends UserEvent{}

class AddUserSecondName extends UserEvent{

  final String seconName;

  AddUserSecondName(this.seconName);

}