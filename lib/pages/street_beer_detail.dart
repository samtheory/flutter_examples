import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class StreetBeerDetailPage extends StatelessWidget {
  const StreetBeerDetailPage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const  Color(0xffeaeaea),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    EvaIcons.arrowIosBack,
                    size: 30,
                  ),
                  Stack(
                    children: [
                      const Icon(
                        EvaIcons.shoppingCart,
                        size: 30,
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                                color: Colors.cyan[600],
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
              Center(
                child: Hero(
                  tag: 'beer_image',
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    image,
                    height: 400,
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
