import 'package:bloc_gestor/bloc/car_bloc/car_bloc.dart';
import 'package:bloc_gestor/bloc/user_bloc/user_bloc.dart';
import 'package:bloc_gestor/pages/car_description_page.dart';
import 'package:bloc_gestor/pages/car_selection_page.dart';
import 'package:bloc_gestor/pages/pagina1_page.dart';
import 'package:bloc_gestor/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> UserBloc()),
        BlocProvider(create: (_)=> CarBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'carSelect',
        routes: {
          'pagina1': ( _ ) => const Pagina1Page(),
          'pagina2': ( _ ) => const Pagina2Page(),
          'carDesc': ( _ ) => const CardDescriptionPage(),
          'carSelect': ( _ ) => const CardSelectionPage(),
        },
      ),
    );
  }
}