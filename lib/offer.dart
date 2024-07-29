import 'package:flutter/material.dart';
import 'package:view1/main.dart';
TextEditingController parametsController = TextEditingController();
FocusNode _focusNode = FocusNode();

void main (){
  runApp(OfferView());

}

class OfferView extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:MyHomePage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() =>
      _MyHomePageState();
}
class _MyHomePageState extends State <MyHomePage>
{
  String inputText = "";


  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap:(){_focusNode.unfocus();},
      child: Scaffold(
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
      child: AppBar(
      backgroundColor: Color(0xFFE5E5E5),title: Text("Предложить корт",style: TextStyle(fontSize: 28,fontWeight:FontWeight.w500)),
      titleSpacing: 40.0,
      ),
          ),
        backgroundColor: Color(0xFFE5E5E5),

        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 12),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black12, width: 2.0),
                ),
              ),
            ),

                  Container(
                    width: 330,
                      height: 45,
                  child:TextField(
                    onChanged: (value){
                      setState(() {
                        inputText=value;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Название",
                      labelStyle: TextStyle(color: Color(0xFFBDBDBD)),
                    ),
                  ),
                  ),
                SizedBox(height: 20),
                Container(
                  width: 330,
                  height: 45,
                  child:TextField(
                    onChanged: (value){
                      setState(() {
                        inputText=value;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Адрес",
                      labelStyle: TextStyle(color: Color(0xFFBDBDBD)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                      TextField(
                        focusNode: _focusNode,
                        maxLines: 10,
                        minLines: 5,
                        maxLength: 1000,
                        controller: parametsController,
                        decoration: InputDecoration(
                          hintText: 'Описание',
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),),
        ]
                  ),
                ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            SizedBox(
              width: 330,
              height: 45,
              child:ElevatedButton(
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MajorPanel()),
                );
                },
                child: Text("Отправить ", style: TextStyle(fontSize: 18,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), backgroundColor: Color(0xFF272727),
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
