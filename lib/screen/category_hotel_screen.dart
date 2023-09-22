import 'package:flutter/material.dart';

import '../modules/hotel.dart';
import 'hotel_item.dart';

class CategoryHotelScreen extends StatefulWidget {
  final List<Hotel> availableHotels;
  final Function toggleFavourite;
  final Function isMealFavourite;

  const CategoryHotelScreen(
      this.availableHotels,
      this.toggleFavourite,
      this.isMealFavourite,
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

  /*void _removeMeal(String mealId) {
    setState(() {
      categoryMeals?.removeWhere((meal) => meal.id == mealId);
    });
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 40.0,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: 80,
                width: 380,
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
                        )),
                    const SizedBox(
                      width: 55.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          categoryTitle!,
                          style: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          'Hotel',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Stack(
                children: [
                  HotelItem(
                  id: categoryHotels![index].id,
                  imgUrl: categoryHotels![index].imgUrl,
                  title: categoryHotels![index].title,
                  price: categoryHotels![index].price,
                  rating: categoryHotels![index].rating,
                  numRating: categoryHotels![index].numRating,
                ),
                  Positioned(
                      top: 20.0,
                      left: 15.0,
                      child: IconButton(
                          color: Colors.white,
                          icon: widget.isMealFavourite(categoryHotels![index].id)
                              ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                              : const Icon(Icons.favorite_border),
                          onPressed: (){
                            //isLiked = !isLiked;
                            widget.toggleFavourite(categoryHotels![index].id);

                            //print(_favouriteHotel);
                          }

                      )),
                ]
              );
            },
            itemCount: categoryHotels!.length,
          ),
        ),
      ]),
    );
  }
}
