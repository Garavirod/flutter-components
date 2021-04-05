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
          SizedBox(height: 30.0,),
          this._createCardType1(),
          SizedBox(height: 30.0,),
          this._createCardType2(),
          SizedBox(height: 30.0,),
          this._createCardType1(),
          SizedBox(height: 30.0,),
          this._createCardType2(),
          SizedBox(height: 30.0,),
          this._createCardType1(),
          SizedBox(height: 30.0,),
          this._createCardType2(),
        ],),
    );
  }

  /* Methods */
  Widget _createCardType1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
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
    final card =  Container(
      child: Column(
        children: <Widget> [
          /* Allows to load an image from tne net using effect loading */          
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://miro.medium.com/max/4096/1*ZqhXVUw-E0VfBcC0VaxXRg.jpeg'),            
            fadeInDuration: Duration( milliseconds: 200),
            fit: BoxFit.cover,
          ),
          Container( 
            child: Text("I have no idea what I'm doing"),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration( //Decoration container
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black45,
            blurRadius: 10.0, // shadhow
            spreadRadius: 2.0, // show expanction
            offset: Offset(2.0, 5.0), // x,y
          )
        ],
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(20.0),
      )
    );
  }

}