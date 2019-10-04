import 'package:flutter/services.dart' show rootBundle; //se usa show para importar solo un paquete espesifico.

import 'dart:convert';

class _MenuProvider {

  List<dynamic> opciones = [];
  
  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async  { //en dart no es necesario especificar que va a regresar con el return.
    final resp =  await rootBundle.loadString('data/menu_opts.json'); //se usa para cargar archivos de data fijos, como imagenes y demas.
    Map dataMap = json.decode(resp);
    print( dataMap['rutas'] ); //del archivo de json carga solo las rutas usando 'rutas' como si fuese una propiedad.
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final providerData = _MenuProvider();