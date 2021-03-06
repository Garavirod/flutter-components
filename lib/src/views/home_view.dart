import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_utils.dart';
import 'package:components/src/views/alerts_view.dart';
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
    // Load data from provider    
    // Fururebuilder solve something of type future and draw it
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [], // data initial unitl future being solved
      builder: ( BuildContext context, AsyncSnapshot <List<dynamic>> snapshot){
        /* Builder return a widget that works with data prevously porccesd */
        return ListView(
          children: this._createListItems( snapshot.data, context )
        );
      }
    );


   
  }

  List<Widget> _createListItems( List<dynamic> data, BuildContext context ){
    final List<Widget> opts = [];

    data.forEach((opt) { 
      final temp = ListTile(
        title: Text( opt['texto'] ),
        leading: getIcon(opt['icon']),
        trailing: Icon( Icons.arrow_forward_ios_outlined, color: Colors.amber,),
        onTap: (){
          /* Routing name mode */
          Navigator.pushNamed(context, opt['ruta']);
          /* Routing Page route Mode */
          /* final route = MaterialPageRoute(builder: (context) => AlertView());
          Navigator.push(context, route); */
        },
      );
      opts..add(temp)
          ..add(Divider());
    });
    return opts;
  }
}