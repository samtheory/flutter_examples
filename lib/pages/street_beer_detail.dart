import 'package:auto_route/auto_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/street_beer.dart';
import 'package:google_fonts/google_fonts.dart';

class StreetBeerDetailPage extends StatelessWidget {
  const StreetBeerDetailPage(
      {Key? key,
      required this.child,
      required this.heroImageTag,
      required this.heroPriceTag,
      required this.heroTitleTag})
      : super(key: key);
  final Beer child;
  final Object heroImageTag;
  final Object heroPriceTag;
  final Object heroTitleTag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Color(0xffF1E7E5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => context.router.pop(),
                          child: const Icon(
                            EvaIcons.arrowIosBack,
                            size: 30,
                          ),
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
                  ),
                  Center(
                    child: Hero(
                      tag: heroImageTag,
                      transitionOnUserGestures: true,
                      child: Image.asset(
                        child.image,
                        height: 350,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            SizedBox(
                              width: 105,
                              height: 20,
                              child: Hero(
                                tag: heroTitleTag,
                                child: Text(child.title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 18, color: Colors.grey[900])),
                              ),
                            ),
                            Text(
                              '(ALC 4.5% VOL)',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey[700]),
                            )
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.orange[100]),
                        child: Text(
                          'Lager',
                          style: TextStyle(color: Colors.orange[900]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Hero(
                    tag: heroPriceTag,
                    child: SizedBox(
                      width: 105,
                      height: 30,
                      child: Text(
                        child.price,
                        style: GoogleFonts.frederickaTheGreat(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        EvaIcons.alertTriangleOutline,
                        size: 20,
                        color: Colors.orange[800],
                      ),
                      Text(
                        '   order more than 2 beer you will get free delivery',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              style: BorderStyle.solid,
                              color: Colors.cyan),
                        ),
                        child: const Icon(EvaIcons.heartOutline, color: Colors.cyan),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
