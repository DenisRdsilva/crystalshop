import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/home/home_view.dart';

class DrawerContent extends StatefulWidget {
  final double swidth;
  final double sheight;
  final int counter;
  final void Function(int) incrementCounter;
  final void Function(int) decrementCounter;
  const DrawerContent(
      {super.key,
      required this.swidth,
      required this.sheight,
      required this.counter,
      required this.incrementCounter,
      required this.decrementCounter});

  @override
  State<DrawerContent> createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  double val = 0;
  double larg = 0;
  double font = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.swidth > 600) [val = 0.5, larg = 240, font = 20];
    if (widget.swidth <= 600) [val = 0.9, larg = 40, font = 16];
    return Container(
      color: const Color(0xFFE0F2FE),
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(children: [
          Container(
              width: 300,
              height: 70,
              alignment: Alignment.center,
              child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Icon(Icons.shop, color: Colors.white, size: 50),
                    Text('CartBox',
                        style: TextStyle(color: Colors.white, fontSize: 45)),
                    Spacer()
                  ])),
          if (widget.counter == 0) ...[
            Container(
                width: widget.swidth,
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 60),
                child: Text('Your Shopping Cart is Empty',
                    style: GoogleFonts.raleway(
                        fontSize: font,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
          ] else ...[
            Container(
                width: widget.swidth,
                height: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 60),
                child: Text('You selected these products:',
                    style: GoogleFonts.raleway(
                        fontSize: font,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            for (var i = 0; i < lista.length; i++) ...{
              if (quantity[i] > 0) ...{
                Center(
                  child: Row(children: [
                    Container(
                        width: (widget.swidth / 2.5) - larg,
                        height: 45,
                        margin: const EdgeInsets.only(left: 20, top: 40),
                        alignment: Alignment.center,
                        child: Text(lista[i],
                            style: GoogleFonts.raleway(
                                fontSize: font - 4,
                                fontWeight: FontWeight.bold))),
                    Container(
                        width: 30,
                        height: 45,
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(),
                                top: BorderSide(),
                                bottom: BorderSide()),
                            color: Colors.white),
                        margin: const EdgeInsets.only(top: 40),
                        child: Material(
                                child: InkWell(
                            onTap: () => widget.incrementCounter(i),
                            child: const Icon(FontAwesomeIcons.plus,
                                size: 15, color: Colors.black)))),
                    Container(
                        width: 40,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(), color: Colors.white),
                        margin: const EdgeInsets.only(top: 40),
                        alignment: Alignment.center,
                        child: Text('${quantity[i]}',
                            style: GoogleFonts.raleway(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    Container(
                        width: 30,
                        height: 45,
                        decoration: const BoxDecoration(
                            border:
                                Border(top: BorderSide(), bottom: BorderSide()),
                            color: Colors.white),
                        margin: const EdgeInsets.only(top: 40),
                        child: Material(
                                child: InkWell(
                            onTap: () {
                              widget.decrementCounter(i);
                            },
                            child: const Icon(FontAwesomeIcons.minus,
                                size: 15, color: Colors.black)))),
                  ]),
                )
              }
            }
          ],
          Container(
              width: widget.swidth,
              height: 30,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 40),
              child: Text('Total of ${widget.counter} product(s) in your bag',
                  style: GoogleFonts.raleway(
                      fontSize: font,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
        ]));
  }
}
