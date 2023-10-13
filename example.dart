import 'package:flutter/material.dart';
import 'dart:math' show pi;
import 'package:polaroid_carousel/polaroid_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(pi / 8),
        height: 200,
        width: 300,
        color: Colors.black,
      ),
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(pi / 40),
        height: 200,
        width: 300,
        color: Colors.blue,
      ),
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(pi / 15),
        height: 200,
        width: 300,
        color: Colors.brown,
      ),
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(-pi / 15),
        height: 200,
        width: 300,
        color: Colors.red,
      ),
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(-pi / 8),
        height: 200,
        width: 300,
        color: Colors.grey,
      ),
      Container(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(-pi / 40),
        height: 200,
        width: 300,
        color: Colors.yellow,
      ),
    ];

    return Scaffold(
      body: Center(
          child: PolaroidCarousel(
        //these to property are necessary

        // value to which list item translate
        // advice : if the children are rotated like the example and you are not able to specify the translateFactor
        // then the max translateFactor should be √((childHeight^2, childWidth^2)) of child with maximum size
        //but try to adjust translateFactor according to your need
        translateFactor: 360,

        children: list,

        // these properties are optional

        // duration: const Duration(seconds: 1),
        // rotate: const Rotate(x: 0.001,y: 0.02,z: 0.001),
        // curve: Curves.easeInOut,
        // order: Order.frontToBack,
        // translate: Translate.top,
      )),
    );
  }
}
