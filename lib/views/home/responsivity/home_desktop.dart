import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_view.dart';

class HomeDesktop extends StatefulWidget {
  final double swidth;
  final double sheight;
  int counter;
  void Function(int) incrementCounter;
  void Function(int) decrementCounter;
  final GlobalKey<ScaffoldState> scaffoldkey;
  HomeDesktop(
      {super.key,
      required this.swidth,
      required this.sheight,
      required this.scaffoldkey,
      required this.counter,
      required this.incrementCounter,
      required this.decrementCounter});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Container(
            width: widget.swidth * 0.94,
            height: 70,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: widget.swidth * 0.06),
            child: Text('Crystal Online Shop',
                style: GoogleFonts.raleway(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 40))),
        Container(
            width: widget.swidth * 0.06,
            height: 70,
            color: Colors.redAccent,
            child: InkWell(
                onTap: () => widget.scaffoldkey.currentState?.openDrawer(),
                child: const Icon(Icons.shop, size: 30, color: Colors.white)))
      ]),
      Row(children: [
        Container(
            width: widget.swidth * 0.94,
            height: 50,
            color: Colors.amberAccent,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: widget.swidth * 0.06),
            child: Text('The best prices for your pocket',
                style: GoogleFonts.raleway(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 26))),
        Container(
            width: widget.swidth * 0.06,
            height: 50,
            alignment: Alignment.center,
            color: Colors.white,
            child: Text('${widget.counter}',
                style: Theme.of(context).textTheme.headline6))
      ]),
      Container(height: 2, color: Colors.black),
      Container(height: 50),
      SizedBox(
        width: widget.swidth,
        child: Center(
          child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 15,
              runSpacing: 15,
              children: [
                for (var i = 0; i < lista.length; i++) ...{
                  Container(
                    width: widget.swidth * 0.24,
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: Column(children: [
                      Container(width: 40),
                      Container(
                          height: 30,
                          color: Colors.amber,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: widget.swidth * 0.01),
                          child: Text(lista[i],
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold))),
                      SizedBox(
                          width: widget.swidth * 0.24,
                          height: 300,
                          child: Image.asset(imagens[i], fit: BoxFit.cover)),
                      Row(children: [
                        Container(
                            width: widget.swidth * 0.2,
                            height: 100,
                            color: Colors.amberAccent,
                            padding: EdgeInsets.all(widget.swidth * 0.01),
                            child: ListView(
                              children: [
                                Text(description[i],
                                    style: const TextStyle(fontSize: 15)),
                              ],
                            )),
                        Column(children: [
                          Container(
                              width: widget.swidth * 0.04,
                              height: 30,
                              color: Colors.red,
                              child: InkWell(
                                  onTap: () => widget.incrementCounter(i),
                                  child: const Icon(FontAwesomeIcons.plus,
                                      size: 15, color: Colors.white))),
                          Container(
                              width: widget.swidth * 0.04,
                              height: 40,
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text('${quantity[i]}',
                                  style: const TextStyle(fontSize: 16))),
                          Container(
                              width: widget.swidth * 0.04,
                              height: 30,
                              color: Colors.red,
                              child: InkWell(
                                  onTap: () {
                                    if (quantity[i] > 0) {
                                      widget.decrementCounter(i);
                                    }
                                  },
                                  child: const Icon(FontAwesomeIcons.minus,
                                      size: 15, color: Colors.white))),
                        ])
                      ])
                    ]),
                  ),
                }
              ]),
        ),
      ),
      Container(height: 50),
      Container(height: 2, color: Colors.black),
      Container(
          height: 60,
          width: double.maxFinite,
          color: Colors.amber,
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Crystal Online Shop',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Text('© 2022 Designed by Dênis Silva',
                    style: TextStyle(fontWeight: FontWeight.w500))
              ])),
    ]);
  }
}
