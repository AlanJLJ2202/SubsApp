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
          NavItem('TOTAL: \$ 479.00'),
          SubItem('AWS', '01/10/24', '20'),
          SubItem('DigitalOcean', '01/10/24', '80'),
          SubItem('Spotify', '03/10/24', '69'),
          SubItem('ManyChat', '07/10/24', '300'),
          SubItem('Google One', '23/09/24', '10'),
          SubItem('Dominio', '14/01/25', '260'),
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

  Widget SubItem(String title, String fecha, String monto) {
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
                fecha,
                style: textStyle,
              ),
              Text(
                '\$ ${monto}',
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}