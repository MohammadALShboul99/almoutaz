import 'package:flutter/material.dart';
import 'package:mohammad_shboul/Component/Category/CategoryCard.dart';
import 'package:mohammad_shboul/pages/Home.dart';
import 'package:mohammad_shboul/model/product.dart';

List pages = [
  Home(),
  Home(),
  Home(),
  Home(),
];

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
              onmyTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              pageName: "",
            ));
  }
}
