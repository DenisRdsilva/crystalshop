import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_view.dart';

class HomeMobile extends StatefulWidget {
  final double swidth;
  final double sheight;
  final int counter;
  final void Function(int) incrementCounter;
  final void Function(int) decrementCounter;
  final GlobalKey<ScaffoldState> scaffoldkey;
  const HomeMobile(
      {super.key,
      required this.swidth,
      required this.sheight,
      required this.counter,
      required this.scaffoldkey,
      required this.incrementCounter,
      required this.decrementCounter});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
              width: widget.swidth * 0.85,
              height: 70,
              color: Colors.amberAccent,
              alignment: Alignment.center,
              child: Text('Crystal Online Shop',
                  style: GoogleFonts.raleway(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 30))),
          Container(
              width: widget.swidth * 0.15,
              height: 70,
              color: Colors.redAccent,
              child: InkWell(
                  onTap: () => widget.scaffoldkey.currentState?.openDrawer(),
                  child: const Icon(Icons.shop, size: 30, color: Colors.white)))
        ]),
        Row(children: [
          Container(
              width: widget.swidth * 0.85,
              height: 50,
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text('The best prices for your pocket',
                  style: GoogleFonts.raleway(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 20))),
          Container(
              width: widget.swidth * 0.15,
              height: 50,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text('${widget.counter}',
                  style: Theme.of(context).textTheme.headline5))
        ]),
        Container(height: 2, color: Colors.black),
        Container(height: 50),
        Wrap(runSpacing: 15, spacing: 15, children: [
          for (var i = 0; i < lista.length; i++) ...{
            Container(
              width: 300,
              child: Column(
                children: [
                  Container(
                      height: 30,
                      color: Colors.amber,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: widget.swidth * 0.01),
                      child: Text(lista[i],
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset(imagens[i], fit: BoxFit.cover)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 250,
                        height: 100,
                        color: Colors.amberAccent,
                        padding: EdgeInsets.all(widget.swidth * 0.01),
                        child: Text(description[i],
                            style: const TextStyle(fontSize: 15))),
                    SizedBox(
                      width: 50,
                      child: Column(children: [
                        Container(
                            height: 30,
                            width: double.maxFinite,
                            color: Colors.red,
                            child: InkWell(
                                onTap: () => widget.incrementCounter(i),
                                child: const Icon(FontAwesomeIcons.plus,
                                    size: 15, color: Colors.white))),
                        Container(
                            height: 40,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text('${quantity[i]}',
                                style: const TextStyle(fontSize: 16))),
                        Container(
                            height: 30,
                            width: double.maxFinite,
                            color: Colors.red,
                            child: InkWell(
                                onTap: () {
                                  if (quantity[i] > 0) {
                                    widget.decrementCounter(i);
                                  }
                                },
                                child: const Icon(FontAwesomeIcons.minus,
                                    size: 15, color: Colors.white))),
                      ]),
                    )
                  ]),
                ],
              ),
            )
          }
        ]),
        Container(height: 50),
        Container(height: 2, color: Colors.black),
        Container(
            width: widget.swidth,
            height: 60,
            color: Colors.amber,
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Crystal Online Shop',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('© by DSilva',
                      style: TextStyle(fontWeight: FontWeight.w500))
                ])),
      ],
    );
  }
}
