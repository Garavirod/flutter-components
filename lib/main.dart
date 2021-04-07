import 'package:components/src/routes/routes.dart';
import 'package:components/src/views/alerts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //Localization
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
      //Routing map
      initialRoute: '',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){
        print('Route call ${ setting.name }');
        /* 
          This is executed when any route matches in routes
          this way we can do validattions and any other process
          inside.
          It always redirect a route.
        */        
        return MaterialPageRoute(builder: (BuildContext context) => AlertView());

      },
    );
  }  
}