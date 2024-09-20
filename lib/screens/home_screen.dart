import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextStyle textStyle = const TextStyle(
    color: Colors.orange,
    fontSize: 18,
  );

  TextStyle textStyleTitle = const TextStyle(
    color: Colors.orange,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('SubsApp'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          NavItem('TOTAL: \$ 1,000.00'),
          SubItem('Spotify'),
          SubItem('Google One'),
          SubItem('ManyChat'),
          SubItem('DigitalOcean'),
          SubItem('AWS'),
          SubItem('Dominio'),
        ],
      ),

    );
  }


  Widget NavItem(String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget SubItem(String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.orange,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyleTitle
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10/10/2021',
                style: textStyle,
              ),
              Text(
                '\$ 100.00',
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}