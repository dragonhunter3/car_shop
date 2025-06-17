import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchPagee extends StatefulWidget {
  const SearchPagee({super.key});

  @override
  State<SearchPagee> createState() => _SearchPageeState();
}

class _SearchPageeState extends State<SearchPagee> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: CustomTextFormField(
                customDecoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                    hintText: "Audi",
                    hintStyle: textTheme(context).headlineMedium),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                context.pushNamed(AppRoute.catalogPage);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      "https://i.pinimg.com/736x/10/30/68/1030689b9fcbb26eb09d3d8433ba2b4e.jpg",
                      height: height * 0.7,
                      width: width,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
