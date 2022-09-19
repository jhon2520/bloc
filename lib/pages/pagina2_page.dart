import 'dart:developer';

import 'package:bloc_gestor/bloc/user_bloc/user_bloc.dart';
import 'package:bloc_gestor/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {
  
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

                final newUser = User(nombre: "Jhon",profesiones: ["Ing"],edad: 25);
                //obtener instancia del bloc
                userBloc.add(ActivateUser(newUser));
              },
              child: const Text('Establecer Usuario', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

                int age = 56;
                userBloc.add(ChangeUserAge(age));
              },
              child: const Text('Cambiar Edad', style: TextStyle( color: Colors.white ) )
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {

                String newProfesion = "piloto";
                userBloc.add(AddUserProfession(newProfesion));

              },
              child: const Text('Añadir Profesion', style: TextStyle( color: Colors.white ) )
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Apellido")
              ),
              onChanged: (value) {
                log(value);
                userBloc.add(AddUserSecondName(value));
              },
            )

          ],
        )
      ),
    );
  }
}