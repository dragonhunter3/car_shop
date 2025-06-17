import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          _CatalogHeader(height: height, width: width),
          _CatalogBody(height: height, width: width),
        ],
      ),
    );
  }
}

class _CatalogHeader extends StatelessWidget {
  final double height;
  final double width;

  const _CatalogHeader({required this.height, required this.width});

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
              "https://miro.medium.com/v2/resize:fit:720/format:webp/1*3bG32Hdtz2iGei4sTu58eQ.jpeg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.arrow_back, color: Colors.amber),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text(
              "Catalog 4x4",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class _CatalogBody extends StatelessWidget {
  final double height;
  final double width;

  const _CatalogBody({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          _FilterRow(width: width, height: height),
          const SizedBox(height: 10),
          _CatalogGrid(height: height, width: width),
        ],
      ),
    );
  }
}

class _FilterRow extends StatelessWidget {
  final double height;
  final double width;

  const _FilterRow({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height * 0.06,
          width: width * 0.7,
          decoration: BoxDecoration(
            color: const Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black26),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Gladiator Mojaova 2020",
                  style: textTheme(context).headlineSmall),
              SizedBox(),
              Icon(Icons.close),
            ],
          ),
        ),
        const Icon(Icons.filter_alt, size: 35),
      ],
    );
  }
}

class _CatalogGrid extends StatelessWidget {
  final double height;
  final double width;

  const _CatalogGrid({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      6,
      (index) => index % 2 == 0
          ? const CatalogItem(
              title: 'Engine parts',
              imageUrl:
                  'https://images.pexels.com/photos/5158155/pexels-photo-5158155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              navigate: true,
            )
          : const CatalogItem(
              title: 'Lights',
              imageUrl:
                  'https://images.pexels.com/photos/4480465/pexels-photo-4480465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
    );

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: items.map((item) {
        return SizedBox(
          width: width * 0.45,
          child: item,
        );
      }).toList(),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool navigate;

  const CatalogItem({
    super.key,
    required this.title,
    required this.imageUrl,
    this.navigate = false,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () => navigate
          ? context.pushNamed(AppRoute.tyreePage)
          : context.pushNamed(AppRoute.headlightPage),
      child: Container(
        height: height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 5),
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
