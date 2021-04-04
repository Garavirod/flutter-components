import 'dart:convert'; // threating json data
import 'package:flutter/services.dart' show rootBundle; //in order to read json

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider(){
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    this.options = dataMap['rutas'];    
    return this.options;
  }
}

final menuProvider = new _MenuProvider();