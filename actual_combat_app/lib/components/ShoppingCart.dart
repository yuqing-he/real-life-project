import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List photoList = [
    {'id': '1', 'image': 'assets/man.jpeg'},
    {'id': '2', 'image': 'assets/images/colthes02.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          ),
        ),
        buildGoodsList()
      ],
    );
  }

  Container buildGoodsList() {
    return Container(
      width: 64.0,
      height: 64.0,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1.0),
          shape: BoxShape.circle,
          color: Colors.white),
      child: CircleAvatar(
        radius: 60.0,
        backgroundImage: AssetImage(
            // photoList[index]['image'],
            'assets/images/colthes02.png'),
      ),
    );
  }

}
