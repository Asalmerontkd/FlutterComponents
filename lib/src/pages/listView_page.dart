import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [1,2,3,4,5,100,25,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), image: NetworkImage('https://picsum.photos/seed/$imagen/500/300'));
      },
    );
  }
}