import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TiresandWheels extends StatelessWidget {
  const TiresandWheels({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          _TiresHeader(height: height, width: width),
          _TiresBody(height: height, width: width),
        ],
      ),
    );
  }
}

class _TiresHeader extends StatelessWidget {
  final double height;
  final double width;

  const _TiresHeader({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.pexels.com/photos/12607182/pexels-photo-12607182.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.pushNamed(AppRoute.catalogPage);
            },
            child: const Icon(Icons.keyboard_backspace, color: Colors.white),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              "Tires & Wheels",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TiresBody extends StatelessWidget {
  final double height;
  final double width;

  const _TiresBody({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      6,
      (index) => index % 2 == 0
          ? const TireItem(
              title: "Jeep Tires",
              imageUrl:
                  "https://images.pexels.com/photos/21694/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            )
          : const TireItem(
              title: "Jeep Accessories",
              imageUrl:
                  "https://images.pexels.com/photos/10973541/pexels-photo-10973541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
    );

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: items
                .map((item) => SizedBox(width: width * 0.45, child: item))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class TireItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TireItem({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.25,
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: height * 0.2,
              width: width * 0.45,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
