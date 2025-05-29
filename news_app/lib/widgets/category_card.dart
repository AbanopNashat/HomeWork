import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.description,
  });
  final String image;
  final String description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: description);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, left: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        height: 100,
        width: 200,
        child: Center(
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
