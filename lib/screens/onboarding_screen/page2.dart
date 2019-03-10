import 'package:flutter/material.dart';

const double IMAGE_SIZE = 250.0;

class Page2 extends StatelessWidget {
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
                    image: AssetImage('assets/img/choose.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  height: IMAGE_SIZE,
                  width: IMAGE_SIZE,
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Encontre seu produto',
                    style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Utilize nosso menu de categorias de produtos e o sistema de busca para encontrar o que você procura',
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
