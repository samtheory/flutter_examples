import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipePage extends StatefulWidget {
  const LiquidSwipePage({Key? key}) : super(key: key);

  @override
  _LiquidSwipePageState createState() => _LiquidSwipePageState();
}

class _LiquidSwipePageState extends State<LiquidSwipePage> {
  // Photos from google
////////////////////////////////////////////////////////////
///      @Sajjad.theory on Instagram
///////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
  final pages = [
    Container(
      height: double.infinity,
      child: Image.network(
        'https://images6.alphacoders.com/119/thumb-1920-1193325.jpg',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      color: Colors.red,
      height: double.infinity,
      child: Image.network(
        'https://images8.alphacoders.com/119/thumb-1920-1193336.jpg',
        fit: BoxFit.cover,
      ),
    ),
   
    Container(
      height: double.infinity,
      child: Image.network(
        'https://images6.alphacoders.com/119/thumb-1920-1193347.jpg',
        fit: BoxFit.cover,
      ),
    ),
    Container(

      height: double.infinity,
      child: Image.network(
        'https://images5.alphacoders.com/119/thumb-1920-1196468.jpg',
        fit: BoxFit.cover,alignment: Alignment.bottomRight,
      ),
    ),
   
  ];
    return Scaffold(
      body: Builder(
        builder: (context) {
          return LiquidSwipe(
            pages: pages,
            fullTransitionValue: 880,
            waveType: WaveType.circularReveal,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: Colors.white,),
            positionSlideIcon: 0.8,
            onPageChangeCallback: (page) {
              print(page);
            },
            liquidController: LiquidController(),
          );
        },
      ),
    );
  }
}
