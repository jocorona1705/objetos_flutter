import 'package:flutter/material.dart';

void alertaEnvio(BuildContext context, alerta) {
  String alert = alerta;

  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Aviso'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(alert),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      });
}
