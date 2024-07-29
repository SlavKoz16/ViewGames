import 'package:flutter/material.dart';
import 'package:view1/main.dart';
import 'package:view1/view3.dart';
import 'heptagon.dart';

void main() {
  runApp(SecondPanel());
}
class SecondPanel extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:SecondView(),

      debugShowCheckedModeBanner: false,
    );
  }
}
class SecondView extends StatefulWidget{
  @override
  _SecondViewState createState() =>
      _SecondViewState();
}
class _SecondViewState extends State <SecondView>
{
  int _selectedIndex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Color(0xFFD8D8D8),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){ Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 12),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(image: AssetImage("assets/pngwing1.com.png"), width: 110, height: 110),
                          Text("Манчестер\nТеннис",style: TextStyle(fontSize: 28,fontWeight:FontWeight.w500),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on_outlined,size: 35,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Санкт-Петербург,", style: TextStyle(fontSize: 15)),
                          Text("Кировский район, улица Пушкина 26", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1.5),
                        bottom: BorderSide(color: Colors.black12, width: 2.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MajorPanel()),
                          );
                          },
                          child: Text("Инфо", style: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w500)),
                        ),
                        GestureDetector(
                          onTap: () {setState(() {
                            _selectedIndex=1;
                          });
                            },
                          child: Text("Матчи", style: TextStyle(fontSize: 15, color: _selectedIndex==1?
                          Colors.black:Colors.black38, fontWeight: FontWeight.w500)),
                        ),
                        GestureDetector(
                          onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThirdPanel()),
                          );
                          },
                          child: Text("Игроки", style: TextStyle(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.call),
                      SizedBox(width: 6),
                      Text("+7(961) 232 - 93 - 73", style: TextStyle(fontSize: 15)),
                      SizedBox(width: 30),
                      Icon(Icons.language),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Text("Перейти на сайт", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  CustomPaint(
                      size: Size(500, 90),
                      painter: HeptagonPainter()),
                ],
              ),
            ],

          ),
        ),

        bottomNavigationBar: SizedBox(
          height: 100,
          child:BottomAppBar(
            color: Color(0xFFE5E5E5),
            child: Container(
              width: 500,
              height: 90,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.home_outlined,size: 40,),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {},
                            child: Text("Главная", style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.play_arrow_outlined,size: 40,),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {},
                            child: Text("Игры", style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.people_outline,size: 40,),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {},
                            child: Text("Профиль", style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.person_add_alt,size: 40,),
                          SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {},
                            child: Text("Друзья", style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ),

    );
  }
}