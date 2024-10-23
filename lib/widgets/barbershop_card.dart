import 'package:flutter/material.dart';
import 'package:lab2mobile/models/barbershop.dart';

class BarbershopCard extends StatelessWidget {
  final Barbershop barbershop;

  const BarbershopCard({required this.barbershop});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, // Card complet transparent
      shadowColor: Colors.transparent, // Eliminarea umbrei
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                barbershop.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    barbershop.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF6B7280),
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '${barbershop.location} (${barbershop.distance} km)',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        barbershop.rating.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
