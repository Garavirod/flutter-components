import 'package:flutter/material.dart';


class InputView extends StatefulWidget {
  InputView({Key key}) : super(key: key);

  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {

  String _name  = "";
  String _email = "";
  String _date  = "";
  String _choosenPower = "fly";
  List<String> _superPowers = ['fly','speed','super strenght'];
  TextEditingController _inputFieldControlloer = new TextEditingController();

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
          this._createDateInput( context ),
          Divider(),
          this._createDropDown(),
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

  _selectDate( BuildContext context ) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es','ES')      
    );

    /* if a date was picked */
    if( picked != null){
      setState(() {
        this._date = picked.toString();       
        //asign data to controller related
        this._inputFieldControlloer.text = this._date; 
      });
    }
  }

  /* Creates a Date Input Picker*/
  Widget _createDateInput(BuildContext context ){
    return TextField(    
      controller: this._inputFieldControlloer, //controller related
      enableInteractiveSelection: false,  
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),        
        hintText: 'Birthady',
        labelText: 'Birthday',        
        suffixIcon: Icon(Icons.date_range),
        icon: Icon(Icons.date_range_sharp)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode()); // remove focus of input
        this._selectDate(context);
      },
    );
  }


  List<DropdownMenuItem<String>> getOptionDropDown(){
    List<DropdownMenuItem<String>> listIems = [];
    this._superPowers.forEach((power) {
      listIems.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });
    return listIems;
  }

  /* Creates a combobox */
  Widget _createDropDown(){
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width:30.0),
        Expanded(
            child: DropdownButton(
            value: this._choosenPower,//current choosen value,
            items: this.getOptionDropDown(),
            onChanged: ( opt ){
              setState(() {
                this._choosenPower = opt;          
              });
            },
          ),
        ),
      ],
    );
    
  }

  /* Creates a label for show the name written into input */
  Widget _createPerson(){
    return ListTile( 
      title: Text("Name ${this._name}"),
      subtitle: Text("Email ${this._email}"),
      trailing: Text(this._choosenPower),
    );
  }
}