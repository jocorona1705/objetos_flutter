import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('card page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  //ejemplo de tarjeta simple
  Widget _cardTipo() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Este es el titulo de la tarjeta'),
              subtitle: Text(
                  'Aqui esta la descripcion de la tarjeta que se ddebe de mostrar y acomodarse de manera simetrica')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2019/02/Landscapes-02-jeremy-flint.jpg?w=1500&ssl=1'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          //iejemplo de imagen que carga tiempo despues de cargar el widget
          // Image(
          //   image: NetworkImage('https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2019/02/Landscapes-02-jeremy-flint.jpg?w=1500&ssl=1'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner aqui'),
          ),
        ],
      ),
    );
  }
}
