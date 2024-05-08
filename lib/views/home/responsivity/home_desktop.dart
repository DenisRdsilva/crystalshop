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
            alignment: Alignment.center,
            color: const Color(0xFFE0F2FE),
            padding: EdgeInsets.only(left: widget.swidth * 0.06),
            child: Text('Crystal Online Shop',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500, fontSize: 40))),
        SizedBox(
            width: widget.swidth * 0.06,
            height: 70,
            child: Material(
                child: InkWell(
                    onTap: () => widget.scaffoldkey.currentState?.openDrawer(),
                    child:
                        const Icon(Icons.shop, size: 30, color: Colors.white))))
      ]),
      Row(children: [
        Container(
            width: widget.swidth * 0.94,
            color: Color(0xFFF5F5F5),
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: widget.swidth * 0.06),
            child: Text('The best prices for your pocket',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500, fontSize: 26))),
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
          child: Wrap(alignment: WrapAlignment.start, children: [
            for (var i = 0; i < lista.length; i++) ...{
              Container(
                width: widget.swidth * 0.24,
                constraints: const BoxConstraints(maxWidth: 500),
                child: Card(
                  child: Column(children: [
                    Container(width: 40),
                    Container(
                        height: 30,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: widget.swidth * 0.01),
                        child: Text(lista[i],
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                        width: widget.swidth * 0.24,
                        height: 300,
                        child: Image.asset(imagens[i], fit: BoxFit.cover)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: widget.swidth * 0.19,
                              height: 100,
                              padding: EdgeInsets.all(widget.swidth * 0.01),
                              child: ListView(
                                children: [
                                  Text(description[i],
                                      style: const TextStyle(fontSize: 15)),
                                ],
                              )),
                          Column(children: [
                            Container(
                                width: widget.swidth * 0.035,
                                height: 30,
                                child: Material(
                                    child: InkWell(
                                        onTap: () => widget.incrementCounter(i),
                                        child: const Icon(FontAwesomeIcons.plus,
                                            size: 15, color: Colors.white)))),
                            Container(
                                width: widget.swidth * 0.035,
                                height: 40,
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('${quantity[i]}',
                                    style: const TextStyle(fontSize: 16))),
                            Container(
                                width: widget.swidth * 0.035,
                                height: 30,
                                child: Material(
                                    child: InkWell(
                                        onTap: () {
                                          if (quantity[i] > 0) {
                                            widget.decrementCounter(i);
                                          }
                                        },
                                        child: const Icon(
                                            FontAwesomeIcons.minus,
                                            size: 15,
                                            color: Colors.white)))),
                          ])
                        ])
                  ]),
                ),
              ),
            }
          ]),
        ),
      ),
      Container(height: 50),
      Container(height: 2, color: Colors.black),
      Container(
          height: 60,
          color: const Color(0xFFE0F2FE),
          width: double.maxFinite,
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Crystal Online Shop',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Text('© by DSilva',
                    style: TextStyle(fontWeight: FontWeight.w500))
              ])),
    ]);
  }
}
