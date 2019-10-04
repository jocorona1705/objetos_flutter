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

    return opciones.map(( item ) { //item es lo equivalente a item de un foreach
      return Column( //pulsando control + . se abre un menu adicional de opciones donde se selecciono 
        children: <Widget>[ //wrap whit column, genera el widget dentro de un list de widgets con la propeiedad children.
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('cualquier cosa'),
            leading: Icon(Icons.battery_alert), //es el icono del lado izquierdo en listile de un listview
            trailing: Icon(Icons.keyboard_arrow_right),//es el icono del lado derecho en listile de un listview
            onTap: () {}, //propiedad que se usa para agregar evento al tocar el listile
          ),
          Divider()
        ],
      );
    }).toList();

  }

  //ejemplo de usar un for in
  // List<Widget> _crearItems() {

  //   List<Widget> lista = new List<Widget>();

  //   for (var opt in opciones) {  //este es un ejemplo de foreach que recorre la lista por cada item
      
  //     final tempWidget = ListTile(
  //         title: Text(opt),
  //     );

  //     lista..add(tempWidget) //al especificar ..add se ahorra tener que escribir en la siguiente lista.add()
  //           ..add(Divider());

  //   }

  //   return lista;
  // }

}
