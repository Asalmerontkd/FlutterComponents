import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlid = 0.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        )
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 10,
      value: _valorSlid,
      min: 0.0,
      max: 350.0,
      onChanged: (_bloquearCheck) ? null : ( valor ){
        setState(() {
         _valorSlid = valor;
        });
      }
    );
  }

  Widget _checkBox(){
    /*return Checkbox(value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;
        });
      }
    );*/

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;
        });
      }
    );
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;
        });
      }
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://www.xda-developers.com/files/2018/02/Flutter-Framework-Feature-Image-Yellow.png'),
      width: _valorSlid,
      fit: BoxFit.contain,
    );

  }
}