import 'package:flutter/material.dart';
import 'package:lab2mobile/widgets/barbershop_card.dart';
import 'package:lab2mobile/widgets/barbershop_card_extend.dart';
import 'package:lab2mobile/widgets/see_all_button.dart';
import 'package:lab2mobile/widgets/user_profile.dart';
import 'package:lab2mobile/widgets/search_bar.dart' as custom;
import '../widgets/booking_card.dart';
import '../utils/static_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            UserProfile(user: currentUser),
            SizedBox(height: 30),
            BookingCard(),
            SizedBox(height: 30),
            custom.SearchBar(controller: TextEditingController()),

            // Text Nearest Barbershop
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Nearest Barbershop',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF111827),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
            ),
            Column(
              children: nearestBarbershops.map((barbershop) {
                return BarbershopCard(barbershop: barbershop);
              }).toList(),
            ),

            Center(
              child: SeeAllButton(),
            ),

            BarbershopRecommendation(mostRecommended: mostRecommended),

            Column(
              children: mostRecommended2.map((barbershop) {
                return BarbershopCard(barbershop: barbershop);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
