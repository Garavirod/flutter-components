import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },        
      ),
    );
  }
}