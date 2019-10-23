import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0), //agrega un marco de separacion en la pantalla
        children: <Widget>[ //de acuerdo a las cordeenadas ingresadas, esto cambia el texto del list view.
          _crearInput(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
        // autofocus: true,
        textCapitalization: TextCapitalization.sentences, //se usa para agregar un autorrector a el texto ingresado
        decoration: InputDecoration( //clase para decorar el input se uso solo para el borde redondo
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0) // es el borde redondo usado en el input
          ),
          counter: Text(' Letras 0'), 
          hintText: 'Nombre de la persona', //texto que ayuda como sugerencia, remplaza a el placeholder
          labelText: 'Nombre:', //nombre del campo
          helperText: 'Solo es el nombre de la persona', //texto hubicado debajo den input
          suffixIcon: Icon(Icons.accessibility), //icono al final del campo de texto
          icon: Icon(Icons.account_circle), //icono al inicio del campo de texto
        ),
        onChanged: (valor) { //metodo que se ejecuta cada vez que se cambie el valor del input
          setState(() {
           _nombre = valor; 
          });
        },
    );

  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre es $_nombre'),
    );

  }
}