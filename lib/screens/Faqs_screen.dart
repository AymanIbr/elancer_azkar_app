import 'package:flutter/material.dart';


class FaqsScreen extends StatelessWidget {
   FaqsScreen({Key? key , this.message}) : super(key: key);

  String? message ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Faqs Screen'),
      ),
      body: Center(child:
      Text(
          message ?? 'No Message'
      ),
      ),
    );
  }
}
