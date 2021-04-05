import 'package:flutter/material.dart';

class CardView extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [        
          this._createCardType1(),
          SizedBox(height: 30.0,),
          this._createCardType2(),
        ],),
    );
  }

  /* Methods */
  Widget _createCardType1(){
    return Card(
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon( 
              Icons.photo_size_select_actual_rounded,
              color: Colors.amber,
            ), 
            title: Text('Title card'),           
            subtitle: Text('This is a subtitile card and you can add any text here, so if you can see this is ok'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              FlatButton(onPressed: (){}, child: Text('Cancel')),
              FlatButton(onPressed: (){}, child: Text('Acept')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createCardType2(){
    return Card(
      child: Column(
        children: <Widget> [          
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://miro.medium.com/max/4096/1*ZqhXVUw-E0VfBcC0VaxXRg.jpeg'),            
            fadeInDuration: Duration( milliseconds: 200),
          ),
          Container( 
            child: Text("I have no idea what I'm doing"),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }

}