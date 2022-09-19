import 'package:flutter/material.dart';

class CardSelectionPage extends StatefulWidget {
  const CardSelectionPage({Key? key}) : super(key: key);

  @override
  State<CardSelectionPage> createState() => _CardSelectionPageState();
}

class _CardSelectionPageState extends State<CardSelectionPage> {

  var marcas = ["Totoya","Mazda","Renault"];
  String valor = "Totoya";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecciones un carro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration:const InputDecoration(label:  Text("Precio máximo")),
              ),
              DropdownButton(
                hint: Text("ingrese una marca"),
                value: valor,
                isExpanded: true,
                items: marcas.map((marcas){
                  return DropdownMenuItem(
                    value: marcas, 
                    child: Text(marcas));
                }).toList(), 
                onChanged:( value) {
                  valor = value!;
              }),
              TextFormField(
                decoration: const InputDecoration(label:  Text("nombre")),
              ),
              SizedBox(height: 40,),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo
                ),
                onPressed: (){}, 

                child: Text("Enviar formulario")),

                TextButton(onPressed: (){
                  Navigator.pushNamed(context, "carDesc");
                }, child: const Text("Mi carro"))
            ],
        )),
      ),
    );
  }
}
