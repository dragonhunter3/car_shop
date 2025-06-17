import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SliderOne extends StatefulWidget {
  const SliderOne({super.key});

  @override
  State<SliderOne> createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.05),
                Text(
                  "Find parts for 4x4,\nand adventures",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.05),
                buildSelectionCard(
                  label: "Select Brand",
                  onTap: () {
                    context.pushNamed(AppRoute.selectpartPage);
                  },
                ),

                SizedBox(height: 10),

                // Select Model
                buildSelectionCard(
                  label: "Select Model",
                  onTap: () {
                    context.pushNamed(AppRoute.selectpartPage);
                  },
                ),

                SizedBox(height: 10),
                buildSelectionCard(
                  label: "Select Part Year",
                  onTap: () {
                    context.pushNamed(AppRoute.selectpartPage);
                  },
                ),

                SizedBox(height: height * 0.05),
                Card(
                    color: Color(0xff1A237E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: CustomButton(
                        color: Color(0xff1A237E),
                        onTap: () {
                          context.pushNamed(AppRoute.catalogPage);
                        },
                        text: "Search")),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSelectionCard(
      {required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 10,
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(label),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.expand_more),
              )
            ],
          ),
        ),
      ),
    );
  }
}
