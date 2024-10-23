import 'package:flutter/material.dart';
import 'package:lab2mobile/models/barbershop.dart';

class BarbershopRecommendation extends StatefulWidget {
  final List<Barbershop> mostRecommended;
  const BarbershopRecommendation({required this.mostRecommended});

  @override
  _BarbershopRecommendationState createState() =>
      _BarbershopRecommendationState();
}

class _BarbershopRecommendationState extends State<BarbershopRecommendation> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Most recommended',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF111827),
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
            ),
          ),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.mostRecommended[_currentIndex].imageUrl,
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF363062),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Booking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                widget.mostRecommended[_currentIndex].name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.location_on, size: 16, color: Color(0xFF6B7280)),
                  SizedBox(width: 5),
                  Text(
                    '${widget.mostRecommended[_currentIndex].location} (${widget.mostRecommended[_currentIndex].distance} km)',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, size: 16, color: Colors.orange),
                  SizedBox(width: 5),
                  Text(
                    widget.mostRecommended[_currentIndex].rating.toString(),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: widget.mostRecommended.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = entry.key;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: _currentIndex == entry.key ? 35 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: _currentIndex == entry.key
                      ? Color(0xFF363062)
                      : Color(0xFFC4C4C4),
                  borderRadius: _currentIndex == entry.key
                      ? BorderRadius.circular(5)
                      : BorderRadius.circular(50),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
