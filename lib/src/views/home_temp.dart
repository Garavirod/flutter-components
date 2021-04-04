import 'package:flutter/material.dart';

class HomeViewTemp extends StatelessWidget {

  final items = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home temp'),
      ),
      body: ListView(
        children: this._shortCreateItems(),
      ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> listItem = [];
    for (var item in items) {
      final tempwidget = ListTile(
        title:Text(item),
      );
      /* Cascade operator return the reference (listItem) 
      to parent wich was a methd aplied for */
      listItem..add(tempwidget)
              ..add(Divider());

    }
    return listItem;
  }


  List<Widget> _shortCreateItems(){
    return this.items.map( (e) {
      return Column(        
        children: <Widget> [
          ListTile(
            title: Text(e + ' item'),
            subtitle: Text('something else'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){},
          ),
          Divider()          
        ]
      );
    }).toList();
  }

}