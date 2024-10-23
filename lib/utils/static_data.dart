import '../models/user.dart';
import '../models/barbershop.dart';

final User currentUser = User(
  name: 'Tudor Bogdan - TI 214',
  location: 'Chisinau',
  avatarUrl: 'assets/images/avatar.png',
);

final List<Barbershop> nearestBarbershops = [
  Barbershop(
    name: 'Alana Barbershop - Haircut massage & Spa',
    location: 'Banguntapan',
    distance: 5,
    rating: 4.5,
    imageUrl: 'assets/images/alana.png',
  ),
  Barbershop(
    name: 'Hercha Barbershop - Haircut & Styling',
    location: 'Jalan Kaliurang',
    distance: 8,
    rating: 5.0,
    imageUrl: 'assets/images/hercha.png',
  ),
  Barbershop(
    name: 'Barberking - Haircut styling  & massage',
    location: 'Jogja Expo Centre',
    distance: 12,
    rating: 4.5,
    imageUrl: 'assets/images/barberking.png',
  ),
];

final List<Barbershop> mostRecommended = [
  Barbershop(
    name: 'Master piece Barbershop - Haircut styling',
    location: 'Joga Expo Centre',
    distance: 2,
    rating: 5.0,
    imageUrl: 'assets/images/barberking2.png',
  )
    ];

final List<Barbershop> mostRecommended2 = [
  Barbershop(
    name: 'Varcity Barbershop Jogja ex The Varcher',
    location: 'Condongcatur',
    distance: 10,
    rating: 4.5,
    imageUrl: 'assets/images/varcity.png',
  ),
  Barbershop(
    name: 'Twinsky Monkey Barber & Men Stuff',
    location: 'Jl Taman Siswa',
    distance: 8,
    rating: 5.0,
    imageUrl: 'assets/images/twinsky.png',
  ),
  Barbershop(
    name: 'Barberman - Haircut styling & massage',
    location: 'J-Walk Centre',
    distance: 17,
    rating: 4.5,
    imageUrl: 'assets/images/barberman.png',
  ),
];
