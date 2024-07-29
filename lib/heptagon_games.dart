import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HeptagonGames());
}

class HeptagonGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomPaintWithText(
          ),
        ),
      ),
    );
  }
}

class CustomPaintWithText extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(500,100),
            painter: HeptagonGamesPainter(),
          ),
          Positioned(
         child: Container(
    width: 400,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildFirstContainer(),
    _buildSecondContainer(),
    _buildThirdContainer(),
      _buildFourthContainer(),
    ],
    ),
    ),
          ),
        ],
    );
  }
  Widget _buildFirstContainer(){
    return Container(
      width: 90,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Приморская жемчужина",style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
            textAlign: TextAlign.start,
          ),
          Divider(color:Colors.black),
          Text("20.02 2023",style: TextStyle(
              fontSize:14,color: Colors.black ),
          textAlign: TextAlign.start,),
          Text("16:32",style: TextStyle(
              fontSize:14,color: Colors.black ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  Widget _buildSecondContainer(){
    return Container(
      width: 105,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF8F8F8F),
                radius: 13.0,
              ),
          Text("Абросимов\nСергей",style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
            textAlign: TextAlign.start,
          ),],),
          Divider(color:Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF8F8F8F),
                radius: 13.0,
              ),
              Text("Виктор Цой",style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
                textAlign: TextAlign.start,
              ),],),
          SizedBox(height: 12,)
        ],
      ),
    );
  }
  Widget _buildThirdContainer(){
    return Container(
      height: 62,
      width: 66,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("NTRP: 2 ",style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
            textAlign: TextAlign.start,
          ),
          Divider(color:Colors.black),
          Text("NTRP: 3.5",style: TextStyle(
              fontSize:14,color: Colors.black ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  Widget _buildFourthContainer(){
    return Container(
      width: 24,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("1:0",style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  }

class HeptagonGamesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint gradientPaint=Paint()
    ..shader=LinearGradient(
      begin: Alignment.topLeft,
      end:Alignment.bottomRight,
      colors: [
        Color(0xffDEDEDE),
        Color(0xff888888),
      ],
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height)
    );
    Paint borderPaint = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;


    double cornerRadius = 12.0;

    Path heptagonPath = Path();


    heptagonPath.moveTo(cornerRadius, 0);//верхняя сторона
    heptagonPath.lineTo(size.width - cornerRadius, 0);//правый верхний угол
    heptagonPath.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );

    heptagonPath.lineTo(size.width, size.height * 0.33);//первый правый угол
    heptagonPath.lineTo(size.width * 0.975, size.height * 0.49);//средний правый угол
    heptagonPath.lineTo(size.width, size.height * 0.67);//второй правый угол

    heptagonPath.lineTo(size.width, size.height - cornerRadius);
    heptagonPath.arcToPoint(
      Offset(size.width - cornerRadius, size.height),//правый нижний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.lineTo(cornerRadius, size.height );//нижняя сторона
    heptagonPath.arcToPoint(
      Offset(0, size.height - cornerRadius),//левый нижний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.lineTo(0, cornerRadius);//левая сторона
    heptagonPath.arcToPoint(
      Offset(cornerRadius, 0),//левый верхний угол
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    heptagonPath.close();

    canvas.drawShadow(heptagonPath, Colors.black, 4.0, true);
    canvas.drawPath(heptagonPath, gradientPaint);
    canvas.drawPath(heptagonPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}