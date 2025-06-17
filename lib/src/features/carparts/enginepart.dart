import 'package:car_shop/src/routes/go_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnginePart extends StatefulWidget {
  const EnginePart({super.key});

  @override
  State<EnginePart> createState() => _EnginePartState();
}

class _EnginePartState extends State<EnginePart> {
  late double height, width;

  final List<String> imageUrls = List.generate(
    4,
    (_) =>
        "https://images.pexels.com/photos/5158155/pexels-photo-5158155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  );

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 16),
              SizedBox(
                height: height * 0.3,
                width: width,
                child: CarouselSlider(
                  items: imageUrls
                      .map((url) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(url), fit: BoxFit.cover),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: height * 0.3,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.04),
                    Text(
                      "BF Goodrich, 315/70R17 Tier, All-, \nTerrain T/A KO2 - 08806",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      'In Consequant, quam id sodales handrerit, eros mi molestie '
                      'In Consequant, quam id sodales handrerit, eros mi molestie '
                      'In Consequant, quam id sodales handrerit, eros mi molestie '
                      'In Consequant, quam id sodales handrerit.',
                      maxLines: 6,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              BottomAppBar(
                height: height * 0.1,
                elevation: 20,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "AED 33",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.amber[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.pushNamed(AppRoute.cartPage);
                      },
                      child: Card(
                        color: const Color(0xff1A237E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
