import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_new_app_ui/home_screen.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(height: 20),
            Carousel(
              indicatorBarColor: Colors.transparent,
              autoScroll: true,
              height: 400,
              items: [
                Image.asset("assets/slide1.png"),
                Image.asset("assets/slide2.png"),
                Image.asset("assets/fruit_salad.png"),
              ],
            )
                .animate()
                .slideY(
                    begin: 10,
                    duration: const Duration(
                      milliseconds: 800,
                    ),
                    curve: Curves.easeOut)
                .fadeIn(
                  begin: 0.1,
                  delay: const Duration(milliseconds: 600),
                )
                .moveX(end: 0),
            SizedBox(height: 20),
            Text(
              "Mediterranean",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
                .animate()
                .fade(duration: const Duration(milliseconds: 600))
                .slideX(),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chickpea Salad",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black87,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("1"),
                      SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black87,
                        ),
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
                .animate()
                .fade(duration: const Duration(milliseconds: 800))
                .slideX(),
            SizedBox(height: 20),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            )
                .animate(
                  delay: const Duration(milliseconds: 600),
                )
                .fade(
                  duration: const Duration(milliseconds: 600),
                ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 30),
                Icon(CupertinoIcons.time),
                Text(
                  "30 min",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ).animate().fade(duration: const Duration(milliseconds: 800)),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$28.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  CupertinoIcons.cart,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.heart,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ).animate(delay: const Duration(milliseconds: 500)).slideY(
                  begin: 1,
                  duration: const Duration(
                    milliseconds: 600,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                ),
          ],
        ),
      ),
    );
  }
}
