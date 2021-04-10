import 'package:flutter/material.dart';

class ListBuilderView extends StatefulWidget {
  ListBuilderView({Key key}) : super(key: key);

  @override
  _ListBuilderViewState createState() => _ListBuilderViewState();
}

class _ListBuilderViewState extends State<ListBuilderView> {
  List<int> _listNumbers = [1,2,3,4,5,6,7,8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBuilder'),
      ),
      body: this._createList(),
    );
  }

  /* Create List */
  Widget _createList(){
    return ListView.builder(
      /* It is gonna to renderize item only when they being necessary */
      itemCount: this._listNumbers.length,
      itemBuilder: (BuildContext context, int index) {
        // How it is going to be drew it..
        final img = this._listNumbers[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?image=$img'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}