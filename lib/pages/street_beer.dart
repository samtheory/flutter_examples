import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/Router/router.dart';
import 'package:flutter_examples/pages/street_beer_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_route/auto_route.dart';

// Google Font Flamenco & caesarDressing
class StreetBeerPage extends StatelessWidget {
  const StreetBeerPage({Key? key}) : super(key: key);
  final int _brandActive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeaeaea),
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
                  EvaIcons.menu2Outline,
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
            Flexible(
                child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good morning,',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('Sajjad Theory',
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(EvaIcons.searchOutline),
                      hintText: 'search',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50))),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _brands.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: _brandActive == index
                                ? Colors.cyan[600]
                                : null),
                        child: Center(
                          child: Text(_brands[index],
                              style: GoogleFonts.poppins(
                                  color: _brandActive == index
                                      ? Colors.white
                                      : Colors.black54)),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 375,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _beers.length,
                    itemBuilder: (_, int index) {
                      // (_beers[index].image) works as an ID
                      Object heroImageTag = 'beer_image' + _beers[index].image;
                      Object heroTitleTag = 'beer_title' + _beers[index].image;
                      Object heroPriceTag = 'beer_price' + _beers[index].image;
                      return GestureDetector(
                        onTap: () {
                          context.router.push(StreetBeerDetailRoute(
                              child: Beer(
                                  title: _beers[index].title,
                                  price: _beers[index].price,
                                  image: _beers[index].image),
                              heroImageTag: heroImageTag,
                              heroPriceTag: heroPriceTag,
                              heroTitleTag: heroTitleTag));
                        },
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 30),
                                  width: 220,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ],
                            ),
                            Positioned(
                                left: 0,
                                right: 0,
                                child: Hero(
                                  tag: heroImageTag,
                                  child: Image.asset(
                                    _beers[index].image,
                                    height: 260,
                                  ),
                                )),
                            Positioned(
                                bottom: 45,
                                left: 35,
                                right: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Hero(
                                      tag: heroTitleTag,
                                      child: SizedBox(
                                        width: 105,
                                        height: 20,
                                        child: Text(_beers[index].title,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.grey[700])),
                                      ),
                                    ),
                                    Hero(
                                      tag: heroPriceTag,
                                      child: SizedBox(
                                        width: 105,
                                        height: 25,
                                        child: Text(
                                          _beers[index].price,
                                          style: GoogleFonts.frederickaTheGreat(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            Positioned(
                                bottom: 0,
                                right: 40,
                                child: GestureDetector(
                                  onTap: () {
                                    print('Added To Card');
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.cyan[400]),
                                    child: Row(
                                      children: [
                                        const Icon(EvaIcons.plusCircleOutline),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Add to cart',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}

List<String> _brands = [
  'All',
  'Lager',
  'Wltbier',
  'Snow',
  'Skol',
  'Tuborg',
  'Busch',
  'Michelob'
];

class Beer {
  final String title;
  final String price;
  final String image;

  Beer({required this.title, required this.price, required this.image});
}

List<Beer> _beers = [
  Beer(
      title: 'Street Beer',
      price: '\$20 USD',
      image: 'assets/images/cone_4.png'),
  Beer(
      title: 'Street Beer',
      price: '\$50 USD',
      image: 'assets/images/cone_2.png'),
  Beer(
      title: 'Street Beer',
      price: '\$15 USD',
      image: 'assets/images/cone_3.png'),
  Beer(
      title: 'Street Beer',
      price: '\$25 USD',
      image: 'assets/images/cone_1.png'),
  Beer(
      title: 'Street Beer',
      price: '\$30 USD',
      image: 'assets/images/cone_5.png'),
  Beer(
      title: 'Street Beer',
      price: '\$9.99 USD',
      image: 'assets/images/cone_6.png'),
  Beer(
      title: 'Street Beer',
      price: '\$12 USD',
      image: 'assets/images/cone_7.png'),
  Beer(
      title: 'Street Beer',
      price: '\$35 USD',
      image: 'assets/images/cone_8.png'),
];
