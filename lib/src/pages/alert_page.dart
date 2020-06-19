import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page.'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Inicar Alerta.'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () { _mostrarAlerta(context);},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings_backup_restore),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido de la Alerta.'),
              FlutterLogo(size: 100,)              
            ],
          ),
          actions: <Widget>[
            FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
            FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('OK')),
          ],
        );
      });
  }
}