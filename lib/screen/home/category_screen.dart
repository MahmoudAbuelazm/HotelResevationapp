import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Row(
              children: [
                Image.asset('assets/Ellipse 8.jpg'),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome Aadam',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 5),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 38,
                            ),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
         /* Expanded(
              child: ListView(
            children: dummyCategories.map((catData) {
              return CategoryItem(
                id: catData.id,
                title: catData.title,
                imgUrl: catData.imgUrl,
              );
            }).toList(),
          )),*/
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(25),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 100,
              ),
              children: dummyCategories.map((catData) {
                return CategoryItem(
                  id: catData.id,
                  title: catData.title,
                  imgUrl: catData.imgUrl,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
