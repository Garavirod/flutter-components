

import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://media.gq.com.mx/photos/5ce19f41d09b9ac33d16885a/16:9/w_1920,c_limit/john%20wick%203.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: Text('RO'),
              backgroundColor: Colors.amber,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://imagenes.milenio.com/vO1Dy55CjCA-DI6g8aKKZ6MQ20E=/958x596/smart/https://www.milenio.com/uploads/media/2014/10/31/john-wick.jpeg'),
        ),        
      ),
    );
  }
}