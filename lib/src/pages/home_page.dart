import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';

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
    //menuProvider.opciones;
    /* La siguiente llamada obtiene los valores del future 
    pero no se recomienda debido a que la petición puede tardar
    menuProvider.cargarData().then((opciones) {
      print('_Lista');
      print(opciones);
    });

    return ListView(
      children: _listItems(),
    );*/
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);

        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems( List<dynamic> data , BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTmp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
          /*final route = MaterialPageRoute(
            builder: (context) => AlertPage(),
          );

          Navigator.push(context, route);*/
        },
      );

      opciones..add(widgetTmp)
              ..add(Divider());
    });
    return opciones;
  }
}
