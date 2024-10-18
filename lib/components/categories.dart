import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final dynamic image;
  final String text;
  const Categories({super.key, this.image, required this.text});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(widget.image),
          radius: 30,
        ),
        SizedBox(
          height: 8,
        ),
        Text(widget.text)
      ],
    );
  }
}
