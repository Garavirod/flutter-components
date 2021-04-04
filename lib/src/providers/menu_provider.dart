import 'package:flutter/services.dart' show rootBundle; //in order to read json

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider(){
    loadData();
  }

  loadData(){
    rootBundle.loadString('data/menu_opts.json')
    .then((value) => print(value));
  }
}

final menuProvider = new _MenuProvider();