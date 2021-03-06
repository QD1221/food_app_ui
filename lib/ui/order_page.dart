import 'package:flutter/material.dart';

class FoodOrderPage extends StatefulWidget {
  const FoodOrderPage({Key key}) : super(key: key);

  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  num _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      'Order details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    IconButton(icon: Icon(Icons.info), onPressed: () {})
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 24, left: 16, right: 16, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Heaven's food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Delivery / As soon as possible'),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.orange,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('800 Cheese Avenue, NYC'),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your order',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'See more',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 6,
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 8),
                                child: Container(
                                  height: 78,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Big Mad Burger',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '\$12.90',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            if(_itemCount < 2){
                                              _itemCount = 1;
                                            }else{
                                              _itemCount --;
                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 42,
                                          width: 42,
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Text('$_itemCount'),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _itemCount++;
                                          });
                                        },
                                        child: Container(
                                          height: 42,
                                          width: 42,
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })),
                    Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                'Subtotal',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              trailing: Text('\$37.50'),
                            ),
                            ListTile(
                              title: Text(
                                'Delivery',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              trailing: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.grey[300]),
                                  child: Text('Free')),
                            ),
                            ListTile(
                              title: Text(
                                'Total',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              trailing: Text(
                                '\$37.50',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Place order',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
