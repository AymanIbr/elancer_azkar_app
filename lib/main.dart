import 'package:elancer_azkar_app/screens/home_screen.dart';
import 'package:elancer_azkar_app/screens/info_screen.dart';
import 'package:elancer_azkar_app/screens/launch_screen.dart';
import "package:flutter/material.dart";
import 'package:flutter_localizations/flutter_localizations.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales:  [
        Locale('ar'),
        Locale('en')
      ],
      locale: Locale('ar'),
      // home: LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context)=>const LaunchScreen(),
        '/home_screen':(context)=>const HomeScreen(),
        '/info_screen':(context)=> InfoScreen(),
      },
    );
  }
}
