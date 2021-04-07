import 'package:flutter/material.dart';


class InputView extends StatefulWidget {
  InputView({Key key}) : super(key: key);

  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  String _name  = "";
  String _email = "";

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
          this._createsEmailInput(),
          Divider(),
          this._createPassword(),
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

  /* Creates a label for show the name written into input */
  Widget _createPerson(){
    return ListTile( 
      title: Text("Name ${this._name}"),
      subtitle: Text("Email ${this._email}"),
    );
  }

  /* Creates an input for email */
  Widget _createsEmailInput(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),        
        hintText: 'Set your email here',
        labelText: 'Email',        
        suffixIcon: Icon(Icons.email_outlined),
        icon: Icon(Icons.email_sharp)
      ),
      onChanged: (currValue){
        setState(() {
          this._email = currValue;          
        });
      },
    );
  }

  /* Creates an input type password */
  Widget _createPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),        
        hintText: 'Set your password here',
        labelText: 'Password',        
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open)
      ),
      onChanged: (currValue){
        setState(() {
          this._email = currValue;          
        });
      },
    );
  }
}