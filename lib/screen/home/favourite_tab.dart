import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../modules/hotel.dart';
import '../../widgets/hotel_item.dart';

class FavouriteTab extends StatelessWidget {
  final List<Hotel> favourites;

  const FavouriteTab(this.favourites, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favourites.isEmpty) {
      return Center(
        child: Text(
          "You have no favorites yet - Start adding some (⁠◍⁠•⁠ᴗ⁠•⁠◍⁠)⁠❤",
          style: GoogleFonts.inter(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Column(
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
                    numRating: favourites[index].numRating);
              },
              itemCount: favourites.length,
            ),
          ),
        ],
      );
    }
  }
}
