import 'package:flutter/material.dart';
import 'package:objetos_flutter/providers/menu_provider.dart';

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
            children: _listaItems( snapshot.data ),
        );
      },
    );
  }

  List<Widget>_listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach( ( f ) {
      final widgetTemp = ListTile(
        title: Text( f['texto'] ),
        leading: Icon( Icons.account_circle ),
        trailing: Icon( Icons.arrow_forward_ios ),
        onTap: () {

        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}