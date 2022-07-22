import 'package:elancer_azkar_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TODO : Navigate to HomeScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color(0xFFFCFD2CF),
              Color(0xFFFA2B5BB),
            ]
          ),
        ),
        child: Text('تطبيق مسبحة',
          style: GoogleFonts.almarai(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
