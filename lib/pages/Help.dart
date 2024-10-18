import 'package:flutter/material.dart';
import 'package:navigationbar/components/colors.dart';
import 'package:navigationbar/pages/Cart.dart';
import 'package:navigationbar/pages/Favoriate.dart';
import 'package:navigationbar/pages/Profile.dart';
import 'package:navigationbar/pages/homepage.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  int indexSelected = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomAppBar(
          height: 60,
          color: secondary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexSelected = 0;
                  });

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.home,
                  size: 35,
                  color: indexSelected == 0 ? accent : Color(0xfff2f2f2),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                  setState(() {
                    indexSelected = 1; // Update index
                  });
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 35,
                  color: indexSelected == 1 ? accent : Color(0xfff2f2f2),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favoriate()));
                  setState(() {
                    indexSelected = 2; // Update index
                  });
                },
                child: Icon(
                  Icons.favorite_outline,
                  size: 35,
                  color: indexSelected == 2 ? accent : Color(0xfff2f2f2),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                  setState(() {
                    indexSelected = 3; // Update index
                  });
                },
                child: Icon(
                  Icons.message_outlined,
                  size: 35,
                  color: indexSelected == 3 ? accent : Color(0xfff2f2f2),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));

                  setState(() {
                    indexSelected = 4; // Update index
                  });
                },
                child: Icon(
                  Icons.person_4_outlined,
                  size: 35,
                  color: indexSelected == 4 ? accent : Color(0xfff2f2f2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}