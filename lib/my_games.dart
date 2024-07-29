import 'package:flutter/material.dart';
import 'package:view1/heptagon_games.dart';
import 'package:view1/heptagon_games2.dart';


void main() {
  runApp(MyGames());
}
class MyGames extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:GamesView(),

      debugShowCheckedModeBanner: false,
    );
  }
}
class GamesView extends StatefulWidget{
  @override
  _GamesViewState createState() =>
      _GamesViewState();
}
class _GamesViewState extends State <GamesView> {

  int _selectedIndex=3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child:  AppBar(
          backgroundColor: Colors.transparent,
            elevation: 0,
          title: Text("Мои игры",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
          titleSpacing: 20.0,
        ),
      ),
          body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
             child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                SizedBox(height: 4),
                  Container(
                  height: 14,
                  decoration: BoxDecoration(
                  border: Border(
                  top: BorderSide(color: Colors.black12, width: 2.0),
                  ),
                  ),
            ),

                  CustomPaint(
                      size: Size(500, 100),
                      painter: SecondHeptagonPainter()),
                  SizedBox(height: 15,),
                  CustomPaintWithText(),
                  SizedBox(height: 15,),
                  CustomPaint(
                      size: Size(500, 100),
                      painter: SecondHeptagonPainter()),
                  SizedBox(height: 15,),
                  CustomPaint(
                      size: Size(500, 100),
                      painter: SecondHeptagonPainter()),
                  SizedBox(height: 16,),
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         SizedBox(
                           width: 175,
                           height: 52,
                           child:ElevatedButton(
                             onPressed: (){setState(() {
                               _selectedIndex=3;
                             });
                             },
                             child: Text("Мои игры ", style: TextStyle(fontSize: 22,color: Colors.white),),
                             style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ), backgroundColor: Color(0xFF272727),
                             ),
                           ),
                         ),
                         SizedBox(
                           width: 175,
                           height: 52,
                           child:ElevatedButton(
                             onPressed: (){
                             },
                             child: Text("Все игры ", style: TextStyle(fontSize: 22,color: Colors.black),),
                             style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ), backgroundColor: Color(0xFFD8D8D8),
                             ),
                           ),
                         ),
                       ],
                     ),
                   )
          ],

    ),
        ),

      bottomNavigationBar: 
      Container(
      child:SizedBox(
        height: 95,
        child:BottomAppBar(
          color: Colors.transparent,
          child: Container(
            width: 550,
            height: 92,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 92,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.home_outlined,size: 45,),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Главная", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.play_arrow_outlined,size: 45,),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Игры", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.people_outline,size: 45,),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Профиль", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 80,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person_add_alt,size: 45,),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Друзья", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
      ),
    );
  }
}