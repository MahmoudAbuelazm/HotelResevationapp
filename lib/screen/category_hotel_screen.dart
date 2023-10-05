import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modules/hotel.dart';
import '../widgets/hotel_item.dart';

class CategoryHotelScreen extends StatefulWidget {
  final List<Hotel> availableHotels;
  final Function toggleFavourite;
  final Function isMealFavourite;

  const CategoryHotelScreen(
      this.availableHotels, this.toggleFavourite, this.isMealFavourite,
      {super.key});

  static const routeName = 'category_hotels';

  @override
  State<StatefulWidget> createState() => _CategoryHotelScreenState();
}

class _CategoryHotelScreenState extends State<CategoryHotelScreen> {
  String? categoryTitle;
  List<Hotel>? categoryHotels;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    categoryTitle = routeArg['title']!;
    categoryHotels = widget.availableHotels.where((hotel) {
      return hotel.category.contains(categoryId);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: height * 0.1,
              width: width,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(226, 246, 245, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.21,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        categoryTitle!,
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Hotel',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 310,
              childAspectRatio: 0.5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
            ),
            children: categoryHotels!.map((catData) {
              return Stack(children: [
                HotelItem(
                  id: catData.id,
                  title: catData.title,
                  imgUrl: catData.imgUrl,
                  price: catData.price,
                  rating: catData.rating,
                  numRating: catData.numRating,
                  star: catData.star,
                ),
                Positioned(
                  top: 15.0,
                  left: 5.0,
                  child: IconButton(
                      color: Colors.white,
                      icon: widget.isMealFavourite(catData.id)
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                        size: 35,
                            )
                          : const Icon(Icons.favorite_border,size: 35,),
                      onPressed: () {
                        //isLiked = !isLiked;
                        widget.toggleFavourite(catData.id);

                        //print(_favouriteHotel);
                      }),
                ),
              ]);
            }).toList(),
          ),
        ),
      ]),
    );
  }
}
