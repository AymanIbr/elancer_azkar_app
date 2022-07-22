import 'package:elancer_azkar_app/screens/Faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _Counter = 0 ;
  String _Content = 'أستغفر الله';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
           centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('مسبحة الاذكار',
            style: GoogleFonts.almarai(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          actions: [
            PopupMenuButton <String> (
              onSelected: (String value){
                if(_Content != value){
                  setState( (){
                    _Content = value ;
                    _Counter = 0 ;
                  });
                }
              },
                itemBuilder: (context){
                  return[
                    PopupMenuItem(child: Text('أستغفر الله',
                    style: GoogleFonts.arefRuqaa(),
                    ),
                      value: 'أستغفر الله',
                      height: 20,
                    ),
                    PopupMenuDivider(),
                    PopupMenuItem(child: Text('الحمد لله',
                      style: GoogleFonts.arefRuqaa(),
                    ),
                      value: 'الحمد لله',
                      height: 20,
                    ),
                    PopupMenuDivider(),
                    PopupMenuItem(child: Text('سبحان الله',
                      style: GoogleFonts.arefRuqaa(),
                    ),
                      value: 'سبحان الله',
                      height: 20,
                    ),
                  ];
                }),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/info_screen',
                  arguments: {
                  'message' : 'Info Screen ' ,
                  }
                );
              },
                icon: Icon(Icons.info),
            ),
            IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>FaqsScreen(message : "Faqs Screen")
                  ),
                  );
                },
                icon: Icon(Icons.question_answer),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Color(0xFFF7D9D9C),
                Color(0xFFF576F72)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://modo3.com/thumbs/fit630x300/27046/1591744391/%D9%83%D9%8A%D9%81_%D8%AA%D8%B5%D9%86%D8%B9_%D9%85%D8%B3%D8%A8%D8%AD%D8%A9.jpg')
                  ),
                  color: Color(0xFFE4DCCF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6,
                      offset: Offset (0,0)
                    ),
                  ]
                ),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height:60,
                margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6,
                      offset: Offset(0,0)
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _Content,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 60,
                      child: Text(
                        _Counter.toString(),
                        style: GoogleFonts.arefRuqaa(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      color : Color(0xFFE4DCCF),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(()=>{
                              ++_Counter
                            });
                          },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFCF8E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10),
                            ),
                          )
                        ),
                          child: Text('تسبيح',
                            style: GoogleFonts.arefRuqaa(
                              color: Colors.black
                            ),
                          ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: (){
                          setState(()=> _Counter = 0);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(10)
                            ),
                          ),
                        ),
                        child: Text('اعادة',
                          style: GoogleFonts.arefRuqaa(
                            color: Colors.black,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(()=>_Counter += 1);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
