import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context); //ejemplo de como regresar a la pantalla anterior
        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlerta(context),
          shape: StadiumBorder(),
          color: Colors.blue,
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Titulo de la alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contnido de la alerta'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: () {},
              ),
          ],
        );
      }
    );
  }
}