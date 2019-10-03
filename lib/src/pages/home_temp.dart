import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearItemCorta()
      ),
    );
  }

  List<Widget> _crearItemCorta() {

    var widgets = opciones.map(( item ) {
      return ListTile(
        title: Text(item + '!'),
      );
    }).toList();

  }

  //ejemplo de usar un for in
  List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {  //este es un ejemplo de foreach que recorre la lista por cada item
      
      final tempWidget = ListTile(
          title: Text(opt),
      );

      lista..add(tempWidget) //al especificar ..add se ahorra tener que escribir en la siguiente lista.add()
            ..add(Divider());

    }

    return lista;
  }

}
