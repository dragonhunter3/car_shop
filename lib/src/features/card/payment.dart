import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  late double height;
  late double width;

  Widget buildSectionTitle(String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 15)),
        Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.amber[700],
          ),
        ),
      ],
    );
  }

  Widget buildPaymentCard(String imageUrl, String title, String subtitle) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        child: Row(
          children: [
            Icon(Icons.radio_button_checked, color: Colors.black26),
            SizedBox(width: width * 0.04),
            Container(
              height: height * 0.04,
              width: width * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: width * 0.04),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(subtitle),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_vert),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildPaymentCard(
                "https://miro.medium.com/v2/resize:fit:4800/format:webp/1*eBS1a9QoT2Q1Iq9_aFCUSQ.png",
                "Globel",
                "034XXX-00X0001",
              ),
              SizedBox(height: height * 0.018),
              buildPaymentCard(
                "https://miro.medium.com/v2/resize:fit:4800/format:webp/1*sDiwTkx8rfIkbQ9CXpDPfg.png",
                "Globel",
                "034XXX-00X0001",
              ),
              SizedBox(height: height * 0.04),
              Center(
                child: InkWell(
                  onTap: () => context.pushNamed(AppRoute.addcardPage),
                  child: DottedBorder(
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.83,
                      color: const Color(0xffF8F8F8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add),
                          SizedBox(width: 8),
                          Text("Add Card", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              buildSectionTitle("Discount", "AED 26"),
              Divider(
                  height: height * 0.05,
                  thickness: 1,
                  color: Colors.grey.shade300),
              buildSectionTitle("Subtotal", "AED 324"),
              Divider(
                  height: height * 0.05,
                  thickness: 1,
                  color: Colors.grey.shade300),
              buildSectionTitle("Total", "AED 324"),
              SizedBox(height: height * 0.08),
              Card(
                  color: Color(0xff1A237E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  child: CustomButton(
                      color: Color(0xff1A237E),
                      onTap: () {
                        context.pushNamed(AppRoute.thankPage);
                      },
                      text: "Place Order")),
            ],
          ),
        ),
      ),
    );
  }
}
