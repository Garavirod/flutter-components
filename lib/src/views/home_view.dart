import 'package:flutter/material.dart';


class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Components'),  
      ),
      body: this._createList(),
    );
  }

  /* Methods */
  Widget _createList(){
    return ListView(
      children: this._createListItems(),
    );
  }

  List<Widget> _createListItems(){
    return [
      ListTile( title: Text('Help'),)
    ];
  }
}