import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show an alert'),
          color: Colors.amber,
          textColor:Colors.white,
          shape: StadiumBorder(),
          onPressed: () => this._showalert(context),
        ),        
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },        
      ),
    );
  }

  /* Methods */
  void _showalert( BuildContext context ){
    showDialog(
      context: context,
      barrierDismissible: true, 
      builder: (context) { // what is going to draw it
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0) ),
          title: Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // adtapd to min content
            children: <Widget> [
              Text('This is the contant od show alert!'),
              FlutterLogo( size:100.0)
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(), //close alert
            ),
            FlatButton(
              child: Text('Acept'),
              onPressed: (){},
            )
          ],
        );
      }
    );
  }
}