import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP.',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: 'inicio',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){
        print('Ruta llamada: ${setting.name}');

        return MaterialPageRoute(builder: ( BuildContext context) => AlertPage());
      },
    );
  }
}