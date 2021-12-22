import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/data/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocialProfilePage extends ConsumerWidget {
  const SocialProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: _ClipPathHeader(),
                    child: Image.asset(
                      'assets/images/mountain.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 160,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Colors.red,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/avt.jpg'),
                          radius: 43,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'Thomas Anderson',
            style: GoogleFonts.audiowide(
                fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child: Text(
            'Software Developer',
            style: GoogleFonts.audiowide(fontSize: 13),
          )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.blue[900]),
                      padding: MaterialStateProperty.resolveWith((states) =>
                          const EdgeInsets.symmetric(horizontal: 30))),
                  onPressed: () {},
                  child: Text('Follow', style: GoogleFonts.audiowide())),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      padding: MaterialStateProperty.resolveWith((states) =>
                          const EdgeInsets.symmetric(horizontal: 20))),
                  onPressed: () {},
                  child: Text('More',
                      style: GoogleFonts.audiowide(color: Colors.black87))),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Featured',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 190,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                      DataSet.socialCardList.length,
                      (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    DataSet.socialCardList[index].image,
                                    width: 160,
                                    fit: BoxFit.cover,
                                    height: 190,
                                  ),
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            stops: const [
                                              0.2,
                                              0.6,
                                            ],
                                            colors: [
                                              Colors.black.withOpacity(.8),
                                              Colors.black.withOpacity(0),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Positioned(
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            DataSet.socialCardList[index].title,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            DataSet.socialCardList[index].desc,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      )),
                                  Positioned(
                                      left: 10,
                                      top: 10,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(.4),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )),
                                  Positioned(
                                      right: 0,
                                      top: 0,
                                      child: ClipPath(
                                        clipper: _CommentClipper(),
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 17, top: 12),
                                          height: 45,
                                          width: 70,
                                          color: Colors.black,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Icon(
                                                Icons.chat_bubble_rounded,
                                                size: 16,
                                                color: Colors.white,
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                DataSet.socialCardList[index]
                                                    .commentNum
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          )),
                ]),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Experience',
              style: GoogleFonts.fredokaOne(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              EvaIcons.facebook,
                              color: Colors.blue[800],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Product Photography',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          EvaIcons.moreVerticalOutline,
                          color: Colors.black87,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              EvaIcons.google,
                              color: Colors.red[600],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Product Photography',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          EvaIcons.moreVerticalOutline,
                          color: Colors.black87,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// =============================================================================
//                    --    UTILITY Classes    --
////////////////////////////////////////////////////////////////////////////////
class _ClipPathHeader extends CustomClipper<Path> {
  var avtWidth = 130;
  var avtH = 30;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);
    path.quadraticBezierTo(0, size.height, 40, size.height);
    path.lineTo(((size.width - avtWidth) / 2) - 40, size.height);
    path.quadraticBezierTo(((size.width - avtWidth) / 2) - 10, size.height,
        ((size.width - avtWidth) / 2), size.height - 20);
    path.cubicTo(
        ((size.width - avtWidth) / 2) + 20,
        size.height - 90,
        ((size.width - avtWidth) / 2) + avtWidth - 20,
        size.height - 90,
        ((size.width - avtWidth) / 2) + avtWidth,
        size.height - 20);
    path.quadraticBezierTo(
        ((size.width - avtWidth) / 2) + 10 + avtWidth,
        size.height,
        ((size.width - avtWidth) / 2) + avtWidth + 40,
        size.height);
    // path.lineTo(((size.width - 80) / 2) + 80, size.height - 60);
    path.lineTo(size.width - 40, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class _CommentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0);
    path.quadraticBezierTo(10, 6, 8, size.height / 2);

    path.quadraticBezierTo(
        8, size.height - 8, size.height / 2, size.height - 8);
    path.lineTo(size.width - size.height / 2, size.height - 8);
    path.quadraticBezierTo(
        size.width, size.height - 8, size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
