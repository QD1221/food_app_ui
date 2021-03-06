import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/order_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  int _btmIndex = 0;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PhysicalModel(
                  color: Colors.black.withOpacity(0.2),
                  elevation: 2,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16))),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8),
                            child: Row(
                              children: [
                                Icon(Icons.location_pin, color: Colors.orange),
                                Text('800 Cheese Avenue, ',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                Text('NYC',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.grey))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.search),
                                  hintText: 'Search for food'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ),
                flex: 3),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 8),
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 8, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Something new',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8, bottom: 8, top: 16),
                                    child: Container(
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              left: 8,
                                              top: 16,
                                              child: Text(
                                                'Pasta',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 8, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recommended',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8, bottom: 8, top: 16),
                                    child: Container(
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              'http://cdn.pixabay.com/photo/2015/04/20/13/30/kitchen-731351__340.jpg'),
                                                          fit: BoxFit.cover),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Heaven's Food",
                                                        style: TextStyle(
                                                            fontSize: 14),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.orange,
                                                            size: 16,
                                                          ),
                                                          Text(
                                                            '4.5',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          SizedBox(width: 16),
                                                          Icon(Icons.timer,
                                                              size: 16),
                                                          Text(
                                                            '25-30 min',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          SizedBox(width: 16),
                                                          Text('\$\$\$')
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Card(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2),
                                                              child: Text(
                                                                'Steak',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          ),
                                                          Card(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2),
                                                              child: Text(
                                                                  'Fish',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .grey)),
                                                            ),
                                                          ),
                                                          Card(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2),
                                                              child: Text(
                                                                  'Experimental',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .grey)),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        )),
                                  );
                                }),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: PhysicalModel(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8)),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _btmIndex = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home_outlined,
                                  size: 28,
                                  color: _btmIndex == 0
                                      ? Colors.orange
                                      : Colors.grey),
                              Text(
                                'Home',
                                style: TextStyle(
                                    color: _btmIndex == 0
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FoodOrderPage()));
                            setState(() {
                              _btmIndex = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart_outlined,
                                  size: 28,
                                  color: _btmIndex == 1
                                      ? Colors.orange
                                      : Colors.grey),
                              Text(
                                'Orders',
                                style: TextStyle(
                                    color: _btmIndex == 1
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _btmIndex = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_outline,
                                  size: 28,
                                  color: _btmIndex == 2
                                      ? Colors.orange
                                      : Colors.grey),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    color: _btmIndex == 2
                                        ? Colors.black
                                        : Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                flex: 2),
          ],
        ),
      ),
    );
  }
}
