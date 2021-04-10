import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  SliderView({Key key}) : super(key: key);

  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double sliderValue = 100.0;
  bool _lockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top:20.0),
        child: Column(
          children: <Widget> [
            this._createSlider(),
            this._createCheckBox(),
            this._createSwitch(),
            Expanded(
              child: this._insertImage(),

            ),
          ],
        )

      ),
    );
  }

  /* Methods */

  Widget _createSlider(){
    return Slider(
      activeColor: Colors.deepOrangeAccent,
      label: "Image size",
      divisions: 20,
      value: this.sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (this._lockCheck) ? null : ( currentVal ){ // null alwasy disabled widgets
        setState(() {
          this.sliderValue = currentVal;
        });
      },
    );
  }

  Widget _createCheckBox(){
    /* return Checkbox(value: this._lockCheck, 
      onChanged: (current){
        setState(() {
          this._lockCheck = current;
        });
      }
    ); */
    return CheckboxListTile(
      title: Text('Lock slider'),
      value: this._lockCheck, 
      onChanged: (current){
        setState(() {
          this._lockCheck = current;
        });
      }
    );
  }
  Widget _createSwitch(){
    return SwitchListTile(
      title: Text('Lock slider'),
      value: this._lockCheck, 
      onChanged: (current){
        setState(() {
          this._lockCheck = current;
        });
      }
    );
  }

  Widget _insertImage(){
    return Image(
      image: NetworkImage("https://www.cinemascomics.com/wp-content/uploads/2020/09/Keanu-Reeves-revela-cuanto-tiempo-interpretara-a-John-Wick.jpg"),
      width: this.sliderValue,
      fit: BoxFit.contain,
    );
  }
}