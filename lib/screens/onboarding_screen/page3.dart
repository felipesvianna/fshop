import 'package:flutter/material.dart';

const double IMAGE_SIZE = 250.0;

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: double.infinity,
      width: double.infinity,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[          
          new Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image(
                    image: AssetImage('assets/img/shipping.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  height: IMAGE_SIZE,
                  width: IMAGE_SIZE,
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Efetue a compra',
                    style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Efetue a compra e receba notificações sobre o rastreamento. Ao recebê-la, dê seu feedback por favor',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
        alignment: FractionalOffset.center,
      ),
    );
  }
}
