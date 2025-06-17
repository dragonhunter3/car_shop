import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/common/widgets/custom_button.dart';
import 'package:car_shop/src/common/widgets/custom_textfield.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Adress extends StatefulWidget {
  const Adress({super.key});

  @override
  State<Adress> createState() => _AdressState();
}

class _AdressState extends State<Adress> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Address",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                _buildLabel("Name"),
                _inputCardField("Name", inputType: TextInputType.name),
                _buildLabel("Address lane"),
                _inputCardField("Address lane", inputType: TextInputType.name),
                _buildLabel("City"),
                _inputCardField("City"),
                _buildLabel("Postal Code"),
                _inputCardField("Postal Code"),
                _buildLabel("Phone Number"),
                _inputCardField("Phone Number"),
                const SizedBox(height: 30),
                Card(
                    color: Color(0xff1A237E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: CustomButton(
                        color: Color(0xff1A237E),
                        onTap: () {
                          context.pushNamed(AppRoute.checkoutPage);
                        },
                        text: "Add Address")),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black38,
        ),
      ),
    );
  }

  Widget _inputCardField(String hint,
      {TextInputType inputType = TextInputType.text}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: CustomTextFormField(
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
}
