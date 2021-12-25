import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderPage extends StatefulWidget {
  const CarouselSliderPage({Key? key}) : super(key: key);

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
 
  int page = 20;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network('https://picsum.photos/id/$page/200/300',
                    fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      color: Colors.grey[900]!.withOpacity(0.4),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 400.0,
                  viewportFraction: .8,
                  enlargeCenterPage: true,
                  onPageChanged: (i, _) {
                    page = i + 20;

                    setState(() {});
                  }),
              items: List.generate(10, (index) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://picsum.photos/id/${index + 20}/200/300',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.6)),
                                  child: const Center(
                                      child: Text(
                                    'Picture Slider',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
