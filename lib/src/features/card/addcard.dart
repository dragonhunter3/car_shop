import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  late double height, width;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController securityCodeController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Card",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _cardLogo(
                        'https://miro.medium.com/v2/resize:fit:4800/format:webp/1*eBS1a9QoT2Q1Iq9_aFCUSQ.png'),
                    _cardLogo(
                        'https://miro.medium.com/v2/resize:fit:4800/format:webp/1*sDiwTkx8rfIkbQ9CXpDPfg.png'),
                    _cardLogo(
                        'https://miro.medium.com/v2/resize:fit:640/format:webp/1*DJTmdbMDSuLz63lyY562mw.png'),
                    _cardLogo(
                        'https://miro.medium.com/v2/resize:fit:720/format:webp/1*2E6eN-zYaE9MywOr_PvYiw.png'),
                  ],
                ),
                SizedBox(height: 20),
                _scanCardButton(),
                SizedBox(height: 25),
                _label("Name on card"),
                _inputCardField(nameController, "Name"),
                SizedBox(height: 20),
                _label("Card number"),
                _inputCardField(cardNumberController, "Card Number",
                    inputType: TextInputType.number),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _label("Expiry date"),
                          _inputCardField(expiryDateController, "MM/YY",
                              inputType: TextInputType.number),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _label("Security code"),
                          _inputCardField(securityCodeController, "CVV",
                              inputType: TextInputType.number),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                _label("Zip/Postal code"),
                _inputCardField(zipController, "Zip Code",
                    inputType: TextInputType.number),
                SizedBox(height: 20),
                _label("Nick Name"),
                _inputCardField(nicknameController, "Nickname"),
                SizedBox(height: 30),
                _placeOrderButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardLogo(String url) {
    return Container(
      height: height * 0.045,
      width: width * 0.15,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.contain),
      ),
    );
  }

  Widget _scanCardButton() {
    return Center(
      child: SizedBox(
        width: width * 0.6,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffD32F2F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 10,
          ),
          onPressed: () {},
          child: Text(
            "Scan credit card",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 6),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }

  Widget _inputCardField(TextEditingController controller, String hint,
      {TextInputType inputType = TextInputType.text}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: CustomTextFormField(
        controller: controller,
        customDecoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: textTheme(context).headlineMedium,
        ),
        keyboardType: inputType,
      ),
    );
  }

  Widget _placeOrderButton() {
    return Card(
        color: Color(0xff1A237E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: CustomButton(
            color: Color(0xff1A237E),
            onTap: () {
              context.pushNamed(AppRoute.paymentPage);
            },
            text: "Place Order"));
  }
}
