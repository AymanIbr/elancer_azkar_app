import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfoScreen extends StatelessWidget {
   InfoScreen({Key? key}) : super(key: key);

      String _message = "No Message";
  @override
  Widget build(BuildContext context) {

    ModalRoute? ModaleRoute = ModalRoute.of(context);
    if(ModaleRoute != null && ModaleRoute.settings.arguments != null){
      if(ModaleRoute.settings.arguments is Map<String , dynamic>){
        Map<String,dynamic> map = ModaleRoute.settings.arguments as Map<String , dynamic>;
        if(map.containsKey('message')){
          _message = map['message'];
        }
      }
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('عن التطبيق',
          style: GoogleFonts.arefRuqaa(),
        ),
      ),
      body: Center(
        child: Text(
            _message ,
          style: GoogleFonts.nunito(
          color: Colors.black
        ),
        ),
      ),
    );
  }
}
