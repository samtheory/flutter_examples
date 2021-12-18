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
        'https://wallpaperaccess.com/full/1682077.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: double.infinity,
      child: Image.network(
        'https://static.statusqueen.com/mobilewallpaper/thumbnail/mobile_wallpaper43-528.jpg',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      color: Colors.red,
      height: double.infinity,
      child: Image.network(
        'https://www.riotgames.com/darkroom/1440/e0ec14b3b7f35c371e754862b86375a8:f889e7f5078704536eaa1263c36da97d/18br-jinx-arcane-loadingscreen-1920x1080-2.jpg',
        fit: BoxFit.cover,
      ),
    ),
   
    Container(
      height: double.infinity,
      child: Image.network(
        'https://i.pinimg.com/originals/4b/b5/3c/4bb53c71cabfbcbb780af39792fc67ed.jpg',
        fit: BoxFit.cover,
        // alignment: Alignment.bottomLeft,
      ),
    ),
    Container(
      height: double.infinity,
      child: Image.network(
        'https://www.enjpg.com/img/2020/4k-mobile-3-scaled.jpg',
        fit: BoxFit.cover,
        // alignment: Alignment.bottomLeft,
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
