import 'package:flutter/material.dart';


class InputView extends StatefulWidget {
  InputView({Key key}) : super(key: key);

  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),        
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0
        ),
        children: <Widget> [
          this.createInput(),
          Divider(),
          this._createPerson(),
        ],
      ),
    );
  }

  /* Methods */
  Widget createInput(){
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text("chars ${this._name.length}"),
        hintText: 'Set your name here',
        labelText: 'Name',
        helperText: 'Name only',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (currValue){
        setState(() {
          this._name = currValue;          
        });
      },
    );
  }

  /* Creates a person based on Input */
  Widget _createPerson(){
    return ListTile( 
      title: Text("Name ${this._name}"),
    );
  }
}