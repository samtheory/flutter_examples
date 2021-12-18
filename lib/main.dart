
import 'package:flutter/material.dart';
import 'package:flutter_examples/Router/router.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final   _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Examples',
       builder: (context, router) => router!,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
