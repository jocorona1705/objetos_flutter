import 'package:flutter/material.dart';

final _icon = <String, IconData>{

  'add_alert'     : Icons.add_alarm,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'arrow_right'   : Icons.arrow_right,
  'donut'         : Icons.donut_small,
};

Icon getIcon( String nombreIcono ){

  return Icon( _icon[ nombreIcono ], color: Colors.blue );

}