import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Counter {
  final String int;
  final String description;

  const Counter(this.int, this.description);
}

void main() {
    runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyStatefulWidget() 
    );
  } 
}
      
class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final ScrollController _firstController = ScrollController();

  int _counter = 0;
  int _counter1 = 0;
  

  void incrementCounter1() {
    setState(() {
      _counter1++;
      _counter = _counter+1;
    });
  }

  void decrementCounter1() {
    setState(() {
      _counter1--;
      _counter = _counter-1;
    });
  }

  int _counter2 = 0;
  void incrementCounter2() {
    setState(() {
      _counter2++;
      _counter = _counter+1;
    });
  }

  void decrementCounter2() {
    setState(() {
      _counter2--;
      _counter = _counter-1;
    });
  }

  int _counter3 = 0;
  void incrementCounter3() {
    setState(() {
      _counter3++;
      _counter = _counter+1;
    });
  }

  void decrementCounter3() {
    setState(() {
      _counter3--;
      _counter = _counter-1;
    });
  }

  int _counter4 = 0;
  void incrementCounter4() {
    setState(() {
      _counter4++;
      _counter = _counter+1;
    });
  }

  void decrementCounter4() {
    setState(() {
      _counter1--;
      _counter = _counter-1;
    });
  }

  int _counter5 = 0;
  void incrementCounter5() {
    setState(() {
      _counter5++;
      _counter = _counter+1;
    });
  }

  void decrementCounter5() {
    setState(() {
      _counter5--;
      _counter = _counter-1;
    });
  }

  int _counter6 = 0;
  void incrementCounter6() {
    setState(() {
      _counter6++;
      _counter = _counter+1;
    });
  }

  void decrementCounter6() {
    setState(() {
      _counter6--;
      _counter = _counter-1;
    });
  }

  var lista = ['Package of Garnets', 'Rutilated Quartz', 'Agate Geode', 'Malachite', 'White Opal', 'Banded Fluorite']; 
  var imagens =['assets/img.jpg', 'assets/img1.jpg', 'assets/img2.jpg', 'assets/img3.jpg', 'assets/img4.jpg', 'assets/img5.jpg'];

  bool _customTileExpanded = true;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
  double swidth = MediaQuery.of(context).size.width;
  double sheight = MediaQuery.of(context).size.height;
  double val = 0;
  double larg = 0;
  double font = 0;
  if (swidth>600)[val = 0.5, larg = 240, font = 20];
  if (swidth<=600)[val = 0.9, larg = 40, font = 16];
  return Scaffold(
    key: scaffoldkey,
    drawer: Drawer(backgroundColor: Colors.amber, width: swidth*val,
      child: Container(margin: EdgeInsets.all(50), child: Column(children: [
        Container(width: 300, height: 70, alignment: Alignment.center, color: Colors.red,
          child: Row( crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(),
            Icon(Icons.shop, color: Colors.white, size: 50),
            Text('Shopcart', style: TextStyle(color: Colors.white, fontSize: 45)),
            Spacer()
          ])),
        if(_counter == 0)...[
          Container(width: swidth, height: 30, alignment: Alignment.center, margin: EdgeInsets.only(top: 60), child: 
            Text('Your Shopping Cart is Empty', style: GoogleFonts.raleway(fontSize: font, fontWeight: FontWeight.bold, color: Colors.black))),
        ]else...[
          Container(width: swidth, height: 30, alignment: Alignment.center, margin: EdgeInsets.only(top: 60), child:
            Text('You selected these products:', style: GoogleFonts.raleway(fontSize: font, fontWeight: FontWeight.bold, color: Colors.black))),
          if(_counter1 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 40), alignment: Alignment.center,
                child: Text(lista[0], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 40), child: 
                TextButton(onPressed: incrementCounter1, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 40), child: 
                TextButton(onPressed: decrementCounter1, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 40), alignment: Alignment.center, child: 
                Text('$_counter1', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          if(_counter2 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 10), alignment: Alignment.center,
                child: Text(lista[1], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: incrementCounter2, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: decrementCounter2, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 10), alignment: Alignment.center, child: 
                Text('$_counter2', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          if(_counter3 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 10), alignment: Alignment.center,
                child: Text(lista[2], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: incrementCounter3, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: decrementCounter3, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 10), alignment: Alignment.center, child: 
                Text('$_counter3', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          if(_counter4 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 10), alignment: Alignment.center,
                child: Text(lista[3], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: incrementCounter4, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: decrementCounter4, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 10), alignment: Alignment.center, child: 
                Text('$_counter4', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          if(_counter5 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 10), alignment: Alignment.center,
                child: Text(lista[4], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: incrementCounter5, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: decrementCounter5, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 10), alignment: Alignment.center, child: 
                Text('$_counter5', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          if(_counter6 > 0)...[
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(width: (swidth/2)-larg, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.amberAccent), margin: EdgeInsets.only(left: 20, top: 10), alignment: Alignment.center,
                child: Text(lista[5], style: GoogleFonts.raleway(fontSize: font-4, fontWeight: FontWeight.bold))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(right: BorderSide(), top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: incrementCounter6, child: 
                  Icon(FontAwesomeIcons.plus, size: 15, color: Colors.black))),
              Container(width: 30, height: 30, decoration: BoxDecoration(border: Border(top: BorderSide(), bottom: BorderSide()), color: Colors.white), margin: EdgeInsets.only(top: 10), child: 
                TextButton(onPressed: decrementCounter6, child: 
                  Icon(FontAwesomeIcons.minus, size: 15, color: Colors.black))),
              Container(width: 40, height: 30, decoration: BoxDecoration(border: Border.all(), color: Colors.white), margin: EdgeInsets.only(top: 10), alignment: Alignment.center, child: 
                Text('$_counter6', style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold)))
            ])
          ],
          Container(width: swidth, height: 30, alignment: Alignment.center, margin: EdgeInsets.only(top: 40), child:
            Text('Total of $_counter product(s) in your bag', style: GoogleFonts.raleway(fontSize: font, fontWeight: FontWeight.bold, color: Colors.black))),
        ]
      ])
    )),
    body: SingleChildScrollView( 
      physics: BouncingScrollPhysics(),
      controller: _firstController,
      child: Container(color: Color.fromARGB(255, 220, 220, 1155), height: sheight, width: swidth,
        child: ListView(children: [
          if (swidth>700)...[
          Row(children: [
            Container(width: swidth*0.94, height: 70, color: Colors.amberAccent, alignment: Alignment.center, padding: EdgeInsets.only(left: swidth*0.06), child: 
              Text('Crystal Online Shop', style: GoogleFonts.raleway(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 40))),
            Container(width: swidth*0.06, height: 70, color: Colors.redAccent, child: TextButton(onPressed: () => scaffoldkey.currentState?.openDrawer(),
              child: Icon(Icons.shop, size: 30, color: Colors.white)))
            ]),
          Row(children: [
            Container(width: swidth*0.94, height: 50, color: Colors.amber, alignment: Alignment.center, padding: EdgeInsets.only(left: swidth*0.06), child: 
              Text('The best prices for your pocket', style: GoogleFonts.raleway(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 30))),
            Container(width: swidth*0.06, height: 50, alignment: Alignment.center, color: Colors.white, child: 
            Text('$_counter', style: Theme.of(context).textTheme.headline5))
            ]),
          Container(height: 2, color: Colors.black),
          Container(height: 50),
          Row(children: [
            Spacer(flex: 4),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[0], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[0], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child:
               Text('Each package have multiple garnets, they can be red or green. Which color is your favourite?', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter1, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter1',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Spacer(flex: 3),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[1], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[1], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child:
                Text('Clear and transparent Quartz crystals filled with golten Rutils in the inside.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter2, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter2',
                    style: TextStyle(fontSize: 16))
                )]),
              ])
            ]),
          Spacer(flex: 4),
        ]),
        Container(height: 40),
        Row(children: [
          Spacer(flex: 4),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[2], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[2], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Big white Agate Geode with small and transparent Quartz crystal in the center.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter3, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter3',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Spacer(flex: 3),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[3], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[3], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('As green as it can ever be, beautiful malachites with excellent shine.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter4, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter4',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Spacer(flex: 4),
        ]),
        Container(height: 40),
        Row(children: [
            Spacer(flex: 4),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[4], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[4], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Small and light rough Opal with blue and yellow reflections in the inside.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter5, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter5',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Spacer(flex: 3),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.37, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[5], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.37, height: 300, child: Image.asset(imagens[5], fit: BoxFit.cover)),
              Row(children: [Container(width: swidth*0.325, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Colorful Fluorites with banded alternation of green and purple, absolutely stunning.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.045, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter6, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.045, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter6',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Spacer(flex: 4),
        ]),
        Container(height: 50),
        Container(height: 2, color: Colors.black),
        Container(height: 60, color: Colors.amber, child:
          Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Crystal Online Shop', style: TextStyle(fontWeight: FontWeight.w500)),
            Text('© 2022 Designed by Dênis Silva', style: TextStyle(fontWeight: FontWeight.w500))
        ])),
      ]else...[
         Row(children: [
            Container(width: swidth*0.85, height: 70, color: Colors.amberAccent, alignment: Alignment.center, child: 
              Text('Crystal Online Shop', style: GoogleFonts.raleway(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 30))),
            Container(width: swidth*0.15, height: 70, color: Colors.redAccent, child: TextButton(onPressed: () => scaffoldkey.currentState?.openDrawer(),
              child: Icon(Icons.shop, size: 30, color: Colors.white)))
            ]),
          Row(children: [
            Container(width: swidth*0.85, height: 50, color: Colors.amber, alignment: Alignment.center, child: 
              Text('The best prices for your pocket', style: GoogleFonts.raleway(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 20))),
            Container(width: swidth*0.15, height: 50, alignment: Alignment.center, color: Colors.white, child: 
            Text('$_counter', style: Theme.of(context).textTheme.headline5))
            ]),
          Container(height: 2, color: Colors.black),
          Container(height: 50),         
          Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[0], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[5], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child:
                Text('Each package have multiple garnets, they can be red or green. Which color is your favourite?', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter1, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter1',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Container(height: 40),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[1], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[1], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child:
                Text('Clear and transparent Quartz crystals filled with golten Rutils in the inside.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter2, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter2',
                    style: TextStyle(fontSize: 16))
                )]),
              ])
            ]),
        Container(height: 40),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[2], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[2], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Big white Agate Geode with small and transparent Quartz crystal in the center.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter3, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter3',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Container(height: 40),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[3], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[3], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('As green as it can ever be, beautiful malachites with excellent shine.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter4, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter4',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
        Container(height: 40),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[4], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[4], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Small and light rough Opal with blue and yellow reflections in the inside.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter5, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter5',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
            Container(height: 40),
            Column(children: [
              Container(width: 40),
              Container(width: swidth*0.8, height: 30, color: Colors.amber, alignment: Alignment.centerLeft, padding: EdgeInsets.only(left: swidth*0.01), child: Text(lista[5], style: GoogleFonts.raleway(fontWeight: FontWeight.bold))),
              Container(width: swidth*0.8, height: 300, child: Image.asset(imagens[0], fit: BoxFit.cover)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: swidth*0.7, height: 60, color: Colors.amberAccent, padding: EdgeInsets.all(swidth*0.01), child: 
                Text('Colorful Fluorites with banded alternation of green and purple, absolutely stunning.', style: TextStyle(fontSize: 15))),
                Column(children: [Container(width: swidth*0.1, height: 35, color: Colors.red, child: TextButton(onPressed: incrementCounter6, child: Icon(FontAwesomeIcons.plus, size: 15, color: Colors.white))),
                  Container(width: swidth*0.1, height: 25, alignment: Alignment.bottomCenter, color: Colors.white, child: Text('$_counter6',
                    style: TextStyle(fontSize: 16))
                )])
              ])
            ]),
        Container(height: 50),
        Container(height: 2, color: Colors.black),
        Container(height: 60, color: Colors.amber, child:
          Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Crystal Online Shop', style: TextStyle(fontWeight: FontWeight.w500)),
            Text('© 2022 Designed by DSilva', style: TextStyle(fontWeight: FontWeight.w500))
        ])),
      ]
    ])
  ))
  );}
}
