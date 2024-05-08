import 'package:flutter/material.dart';
import 'package:teste/views/home/responsivity/home_desktop.dart';
import 'package:teste/views/home/responsivity/home_mobile.dart';

import '../../components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

var lista = [
  'Package of Garnets',
  'Rutilated Quartz',
  'Agate Geode',
  'Malachite',
  'White Opal',
  'Banded Fluorite'
];
var imagens = [
  'assets/img.jpg',
  'assets/img1.jpg',
  'assets/img2.jpg',
  'assets/img3.jpg',
  'assets/img4.jpg',
  'assets/img5.jpg'
];
var quantity = [0, 0, 0, 0, 0, 0];
var description = [
  "Each package have multiple garnets, they can be red or green. Which color is your favourite?",
  "Clear and transparent Quartz crystals filled with golten Rutils in the inside.",
  "Big white Agate Geode with small and transparent Quartz crystal in the center.",
  "As green as it can ever be, beautiful malachites with excellent shine.",
  "Small and light rough Opal with blue and yellow reflections in the inside.",
  "Colorful Fluorites with banded alternation of green and purple, absolutely stunning."
];

class _HomePageState extends State<HomePage> {
  final ScrollController _firstController = ScrollController();

  int _counter = 0;

  void incrementCounter(int value) {
    setState(() {
      _counter = _counter + 1;
      quantity[value] = quantity[value] + 1;
    });
  }

  void decrementCounter(int value) {
      setState(() {
        _counter = _counter - 1;
        quantity[value] = quantity[value] - 1;
      });
  }

  // bool _customTileExpanded = true;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    double val = 0;
    double larg = 0;
    double font = 0;
    if (swidth > 600) [val = 0.5, larg = 240, font = 20];
    if (swidth <= 600) [val = 0.9, larg = 40, font = 16];

    return Scaffold(
        key: scaffoldkey,
        drawer: Drawer(
            backgroundColor: Colors.amber,
            width: swidth * val,
            child: DrawerContent(
                swidth: swidth,
                sheight: sheight,
                counter: _counter,
                incrementCounter: incrementCounter,
                decrementCounter: decrementCounter)),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _firstController,
            child: Container(
                color: const Color.fromARGB(255, 220, 220, 1155),
                height: sheight,
                width: swidth,
                child: ListView(children: [
                  if (swidth > 767) ...[
                    HomeDesktop(
                        swidth: swidth,
                        sheight: sheight,
                        scaffoldkey: scaffoldkey,
                        counter: _counter,
                        incrementCounter: incrementCounter,
                        decrementCounter: decrementCounter
                        )
                  ] else ...[
                    HomeMobile(
                        swidth: swidth,
                        sheight: sheight,
                        counter: _counter,
                        scaffoldkey: scaffoldkey,
                        incrementCounter: incrementCounter,
                        decrementCounter: decrementCounter
                        )
                  ]
                ]))));
  }
}
