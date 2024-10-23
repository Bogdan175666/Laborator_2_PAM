import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backgraund.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Positioned(
            // top: 10,
            // left: 0,
            child: Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/pict.png',
              width: 230,
              height: 230,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF363062),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
              child: Text(
                'Booking Now',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
