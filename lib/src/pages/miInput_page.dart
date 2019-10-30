import 'package:flutter/material.dart';
import 'package:objetos_flutter/src/widgets/alertas.dart';

class MiInputPage extends StatefulWidget {
  @override
  _MiInputPageState createState() => _MiInputPageState();
}

class _MiInputPageState extends State<MiInputPage> {
  String _nombre;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 10.0, //agrega un marco de separacion en la pantalla
            vertical:
                20.0), //de acuerdo a las cordeenadas ingresadas, esto cambia el texto del list view.
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _confirmarPassword(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization
          .sentences, //se usa para agregar un autorrector a el texto ingresado
      decoration: InputDecoration(
        //clase para decorar el input se uso solo para el borde redondo
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)
            // es el borde redondo usado en el input
            ),
        hintText:
            'Nombre de la persona', //texto que ayuda como sugerencia, remplaza a el placeholder
        labelText: 'Nombre:', //nombre del campo
        helperText:
            'Ingrese nombres y apellidos.', //texto hubicado debajo den input
        suffixIcon:
            Icon(Icons.accessibility), //icono al final del campo de texto
        icon: Icon(Icons.account_circle), //icono al inicio del campo de texto
      ),
      onChanged: (valor) {
        //metodo que se ejecuta cada vez que se cambie el valor del input
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType
          .emailAddress, //formato del contenido del input, pone el @.
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Email de la persona',
        labelText: 'Email:',
        helperText: 'Ingresar correo electronico.',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true, //da el formato de password a el contenido del campo
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Contrasea',
        labelText: 'Password:',
        helperText: 'Ingrese contrasea de usuario.',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  _confirmarPassword(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'confirmar password',
        labelText: 'Confirmar password:',
        helperText: 'Ingrese confirmacion de contrasea.',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) {
        setState(() {
          if (valor.length == _password.length) {
            if (_password != valor) {
              alertaEnvio(context, 'Los password no son iguales');
            }
          }
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }
}
