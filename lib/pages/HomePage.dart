import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8B10AE),
      body: Container(

        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('images/Nubank_Logo.png'),
                ),
                SizedBox(width: 10),
                Text("Jorge", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
            SizedBox(height: 70),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _cardCarousel(),
                    _cardCarousel(),
                    _cardCarousel()
                  ],
                ),
              ),
            ),

            SizedBox(height: (MediaQuery.of(context).size.height / 4) - 100),
            Container(
              padding: EdgeInsets.only(left:25),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _bottomCarousel(Icon(Icons.person_add, color: Colors.white), "Indicar amigos"),
                  _bottomCarousel(Icon(Icons.lock_outline, color: Colors.white), "Bloquar cartão"),
                  _bottomCarousel(Icon(Icons.monetization_on, color: Colors.white), "Cobrar"),
                  _bottomCarousel(Icon(Icons.help_outline, color: Colors.white), "Me ajuda"),
                  _bottomCarousel(Icon(Icons.phone_iphone, color: Colors.white), "Recarga de celular"),
                ],
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  Widget _cardCarousel() {

    return Card(
        color: Colors.white,
        child: Container(
          height: 350,
          width: 350,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.credit_card, color: Colors.black),
                      SizedBox(width: 10),
                      Text("Cartão de Crédito", style: TextStyle(color: Colors.black))
                    ]
                  )
                )
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("FATURA ATUAL", style: TextStyle(color: Color(0xff00bcca), fontSize: 15, fontWeight: FontWeight.bold)),
                          Text("€999,99", style: TextStyle(color: Color(0xff00bcca), fontSize: 30, fontWeight: FontWeight.bold)),
                          RichText(
                            text: TextSpan(
                              text: 'Limite disponível ',
                              style: TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(text: '€9.999,99', style: TextStyle(color: Color(0xff9dd12f), fontSize: 16, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )
                        ]
                      )
                    ]
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.directions_bus, color: Colors.black),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 20,
                        child: Text("Compra mais recente em Uber Trip no valor de €9,99 terça", style: TextStyle(color: Colors.black))
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                      )
                    ]
                  )
                ),
              ),
              
            ]
          ),
        ),
      );
  }

  Widget _bottomCarousel(Icon ic, String label) {

    return Container(
        width: 100,
        child: Card(
          color: Color(0xff8f40a9),
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ic,
                SizedBox(height: 30),
                Expanded(child:Text(label, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
              ],
            )
          ),
        )
      );
  }
}
