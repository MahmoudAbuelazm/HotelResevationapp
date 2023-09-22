import 'package:flutter/material.dart';

import '../../modules/hotel.dart';
import '../hotel_item.dart';

class FavouriteTab extends StatelessWidget {
  final List<Hotel> favourites;
  const FavouriteTab(this.favourites,{super.key});



  @override
  Widget build(BuildContext context) {
    if(favourites.isEmpty)
    {
      return const Center(
        child: Text("You have no favorites yet - Start adding some (⁠◍⁠•⁠ᴗ⁠•⁠◍⁠)⁠❤"),
      );
    }
    else {
      return  Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return HotelItem(
                  id: favourites[index].id,
                  imgUrl: favourites[index].imgUrl,
                  title: favourites[index].title,
                  price: favourites[index].price,
                  rating: favourites[index].rating,
                  numRating: favourites[index].numRating
                );
              },
              itemCount: favourites.length,
            ),
          ),
        ],
      );
    }
  }
}