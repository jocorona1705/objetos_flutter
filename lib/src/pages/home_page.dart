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

    print(providerData.opciones);
    
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget>_listaItems() {
    return [
      ListTile(
        title: Text('Texto'),
      ),
      Divider(),
      ListTile(
        title: Text('Texto'),
      ),
      Divider(),
      ListTile(
        title: Text('Texto'),
      ),
      Divider()
    ];
  }
}