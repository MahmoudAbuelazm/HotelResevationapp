import 'package:hotel_reservation/modules/category.dart';

import 'modules/hotel.dart';

List<Category> dummyCategories = [
  Category(id: "c1", title: "Hurghada", imgUrl: 'assets/Hurghada.png'),
  Category(id: "c2", title: "Sharm El-Shaikh", imgUrl: 'assets/SharmElShiekh.png'),
  Category(id: "c3", title: "North Coast", imgUrl: 'assets/NorthCoast.png'),
  Category(id: "c4", title: "Ain Sokhna", imgUrl: 'assets/AinSokhna.png'),
  Category(id: "c5", title: "Alexandria", imgUrl: 'assets/alex.jpg'),
  Category(id: "c6", title: "Marsa Matrouh", imgUrl: 'assets/matrouh.jpeg'),
];


List<Hotel> dummyHotels = [
  Hotel(
      id: "h1",
      title: "Sky View Suites Hotel",
      imgUrl: 'assets/Rectangle 31.png',
      price: '1,882 EGP',
      rating: 'Very Good',
      numRating: '1,048 Ratings',
      category: ["c1"]),
  Hotel(
      id: "h2",
      title: "Sky View Suites Hotel",
      imgUrl: 'assets/Rectangle 40.png',
      price: '1,882 EGP',
      rating: 'Very Good',
      numRating: '1,048 Ratings',
      category: ["c1"]),
  Hotel(
      id: "h3",
      title: "Coral Sea Aqua Club",
      imgUrl: 'assets/Rectangle 34.png',
      price: '685 EGP',
      rating: 'Excellent',
      numRating: '2,777 Ratings',
      category: ["c2"]),
  Hotel(
      id: "h4",
      title: "Coral Sea Aqua Club",
      imgUrl: 'assets/Rectangle 42.png',
      price: '685 EGP',
      rating: 'Excellent',
      numRating: '2,777 Ratings',
      category: ["c2"]),
  Hotel(
      id: "h5",
      title: 'Rixos Alamein',
      imgUrl: 'assets/Rectangle 1.png',
      price: '5,570 EGP',
      rating: 'Very Good',
      numRating: '440 Ratings',
      category: ["c3"]),
  Hotel(
      id: "h6",
      title: 'Rixos Alamein',
      imgUrl: 'assets/Rectangle 2.png',
      price: '5,570 EGP',
      rating: 'Very Good',
      numRating: '440 Ratings',
      category: ["c3"]),
  Hotel(
      id: "h7",
      title: 'Porto El Jabal Hotel',
      imgUrl: 'assets/3.png',
      price: '4,212 EGP',
      rating: 'Very Good',
      numRating: '881 Ratings',
      category: ["c4"]),
  Hotel(
      id: "h8",
      title: 'Porto El Jabal Hotel',
      imgUrl: 'assets/4.png',
      price: '4,212 EGP',
      rating: 'Very Good',
      numRating: '881 Ratings',
      category: ["c4"]),
  Hotel(
      id: "h9",
      title: 'Tolip Hotel Alexandria',
      imgUrl: 'assets/5.png',
      price: '2,555 EGP',
      rating: 'Excellent',
      numRating: '2,048 Ratings',
      category: ["c5"]),
  Hotel(
      id: "h10",
      title: 'Tolip Hotel Alexandria',
      imgUrl: 'assets/6.png',
      price: '2,555 EGP',
      rating: 'Excellent',
      numRating: '2,048 Ratings',
      category: ["c5"]),
  Hotel(
      id: "h11",
      title: 'Royal Crown Hotel',
      imgUrl: 'assets/7.png',
      price: '495 EGP',
      rating: 'Very Good',
      numRating: '254 Ratings',
      category: ["c6"]),
  Hotel(
      id: "h12",
      title: 'Royal Crown Hotel',
      imgUrl: 'assets/8.png',
      price: '495 EGP',
      rating: 'Very Good',
      numRating: '254 Ratings',
      category: ["c6"]),
];
