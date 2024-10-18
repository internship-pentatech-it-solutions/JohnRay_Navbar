import "package:flutter/material.dart";
import "package:navigationbar/components/colors.dart";
import "package:navigationbar/components/categories.dart";
import "package:navigationbar/components/flashsale.dart";
import "package:navigationbar/pages/Cart.dart";
import "package:navigationbar/pages/Favoriate.dart";
import "package:navigationbar/pages/Help.dart";
import "package:navigationbar/pages/Profile.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
      child: Scaffold(
        backgroundColor: primary,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Help()));
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Location',
                style: TextStyle(fontSize: 18, color: Color(0xff8a8a8a)),
              ),

              /// THE FIRST ROW CONTAINING NOTIFICATION ICON AND DELHI INDIA TEXT
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.admin_panel_settings_sharp,
                        color: accent,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Delhi India',
                        style: TextStyle(fontSize: 22, color: accent),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                      )
                    ],
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: accent,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              /// THE SECOND ROW HOUSING THE SEARCH BAR AND AN ICON

              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      isCollapsed: true,
                      isDense: true,
                      hintText: 'Search',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      helperStyle: TextStyle(fontSize: 18),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(color: accent, shape: BoxShape.circle),
                      child: Icon(
                        Icons.swap_horiz_outlined,
                        color: primary,
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),

              /// THE NEW COLLECTIONS BANNER/CARD
              Container(
                width: width * 1,
                height: height * .2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.amber[50],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6))),
                      width: width * .55,
                      height: height * .2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Collection',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Discount 50% for the first transaction.',
                            style: TextStyle(fontSize: 16, color: accent),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: accent,
                                  foregroundColor: primary,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  fixedSize: Size(120, 25)),
                              onPressed: () {},
                              child: Text('Shop Now'))
                        ],
                      ),
                    ),
                    Container(
                      width: width * .34,
                      height: height * .2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6)),
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('../assets/image1.jpg')),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              ///  CATEGORIES OF ITEMS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(
                          0xff8a8a8a,
                        ),
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              /// ROW OF THE CATEGORIES
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Categories(
                    text: 'EARRINGS',
                    image: '../assets/image2.jpg',
                  ),
                  Categories(
                    text: 'BRACELET',
                    image: '../assets/image3.jpg',
                  ),
                  Categories(
                    text: 'NECKLACE',
                    image: '../assets/image1.jpg',
                  ),
                  Categories(
                    text: 'RINGS',
                    image: '../assets/image6.jpg',
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),

              ///  CATEGORIES OF ITEMS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Closing in: 02: 12: 56',
                    style: TextStyle(
                        color: Color(
                          0xff8a8a8a,
                        ),
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),

              /// THE CATEGORIES FOR FLASH SALES
              Container(
                height: 35,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FlashSale(text: 'All'),
                    SizedBox(
                      width: 4,
                    ),
                    FlashSale(
                      text: 'Newest',
                      textcolor: primary,
                      bgcolor: accent,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    FlashSale(text: 'Popular'),
                    SizedBox(
                      width: 4,
                    ),
                    FlashSale(text: 'Trending'),
                    SizedBox(
                      width: 4,
                    ),
                    FlashSale(text: 'Women')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    crossAxisCount: 2,
                    childAspectRatio: 1),
                children: [
                  Image(
                      fit: BoxFit.cover,
                      image: AssetImage('../assets/image6.jpg')),
                  Image(
                      fit: BoxFit.cover,
                      image: AssetImage('../assets/image1.jpg')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
