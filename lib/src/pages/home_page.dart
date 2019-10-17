import 'package:flutter/material.dart';
import 'package:objetos_flutter/src/providers/menu_provider.dart';
import 'package:objetos_flutter/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // print(providerData.opciones);

    return FutureBuilder(
      future: providerData.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
            children: _listaItems( snapshot.data, context ),
        );
      },
    );
  }

  List<Widget>_listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach( ( f ) {
      final widgetTemp = ListTile(
        title: Text( f['texto'] ),
        leading: getIcon( f['iconfirst']),
        trailing: getIcon( f['iconSecond']),
        onTap: () {

            //EJEMPLO DE NAVEGACION POR PUSH NAMED DEFINIDO EN RUTAS en main
            Navigator.pushNamed(context, f['ruta']);

            //EJEMPLO DE NAVEGACION CON MATRIAL PAGE ROUTE
            // final route = MaterialPageRoute(
            //   builder: ( context ) {
            //     return AlertPage();
            //   }
            // );

            // Navigator.push(context, route); //ejemplo de como moverse entre pantallas con push.
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}