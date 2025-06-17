import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  height: height * 0.09,
                  width: width,
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "Products",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "4 Item",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/b1/fd/4d/b1fd4d9afe8ba93bd502370d30791492.jpg")),
                Container(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: height * 0.2,
                        width: width * 0.3,
                      ),
                      Image(
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/c6/b0/41/c6b041bdefc4ae5f6b63e85aa39351b8.jpg")),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 620),
                          child: Card(
                              color: Color(0xff1A237E),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              child: CustomButton(
                                  color: Color(0xff1A237E),
                                  onTap: () {
                                    context.pushNamed(AppRoute.checkoutPage);
                                  },
                                  text: "Check out")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
