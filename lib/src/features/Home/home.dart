import 'package:car_shop/src/routes/go_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: _buildDrawer(context, size),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildAppBar(context),
              _buildSearchBar(context),
              Expanded(
                child: ListView(
                  children: [
                    _buildCarouselSlider(size),
                    const SizedBox(height: 50),
                    _buildSectionHeader('Featured products', 'View all'),
                    const SizedBox(height: 20),
                    _buildFeaturedProductsRow(context, size),
                    const SizedBox(height: 50),
                    _buildSectionHeader('Latest products', 'View all'),
                    const SizedBox(height: 20),
                    _buildLatestProductsRow(context, size),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context, Size size) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: size.height * 0.08,
              width: size.width * 0.5,
              child: Image.network(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEihWGi2D5bZWsqjvxf4thULsKWLG8uz5F1apUgFBxl_hzBiBqErKn24Quga0ayrL_hSC2JISBMFuCTR4thXK6cX04CUhu8QSE5lpveTNeZjT71Ox8IF_-YI8vztfxBiD3AE2VkqACRrCbJExg9yCIUUWQHfPxHFo7-8fgCTi6LjgahsQu3FsScyurLZyxY/s181/logo%5B1%5D.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.1),
          _buildDrawerItem(Icons.category_outlined, "Register Business",
              onTap: () {}),
          _buildDrawerItem(Icons.home_outlined, "Home", onTap: () {
            context.pushNamed(AppRoute.homePage);
          }),
          _buildDrawerItem(Icons.person_2_outlined, "Profile", onTap: () {
            context.pushNamed(AppRoute.profilePage);
          }),
          _buildDrawerItem(Icons.shopping_bag_outlined, "My Cart", onTap: () {
            context.pushNamed(AppRoute.cartPage);
          }),
          _buildDrawerItem(Icons.description_outlined, "My Orders",
              onTap: () {}),
          _buildDrawerItem(Icons.settings_outlined, "Settings", onTap: () {
            context.pushNamed(AppRoute.settingPage);
          }),
          SizedBox(height: size.height * 0.11),
          _buildUserProfile(size),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title,
      {required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
        onTap: onTap,
      ),
    );
  }

  Widget _buildUserProfile(Size size) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              context.pushNamed(AppRoute.profilePage);
            },
            child: Container(
              height: size.height * 0.11,
              width: size.width * 0.15,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1615776/pexels-photo-1615776.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        SizedBox(width: size.width * 0.02),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Muhammad Shahid",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("muhammadshahidmalghani10@gmail.com"),
          ],
        ),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.menu_open, size: 30, color: Color(0xff1A237E)),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.notification_add_rounded,
              color: Color(0xff1A237E)),
          onPressed: () {
            context.pushNamed(AppRoute.notificationPage);
          },
        ),
        const SizedBox(width: 15),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined,
              color: Color(0xff1A237E)),
          onPressed: () {
            context.pushNamed(AppRoute.cartPage);
          },
        ),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoute.searchPage);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            ),
            Text(
              "Search name or chassis number",
              style: TextStyle(fontSize: 15, color: Color(0x80222222)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselSlider(Size size) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            _buildCarouselItem("4x4 parts", const Color(0xff383838)),
            _buildCarouselItem("4x4 parts", Colors.amber[800]!),
            _buildCarouselItem("4x4 parts", const Color(0xff383838)),
            _buildCarouselItem("4x4 parts", Colors.amber[800]!),
          ],
          options: CarouselOptions(
            height: size.height * 0.31,
            aspectRatio: 18 / 9,
            viewportFraction: 0.7,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 400),
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                _currentCarouselIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              width: 24,
              height: 3,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color:
                    _currentCarouselIndex == index ? Colors.amber : Colors.teal,
                borderRadius: BorderRadius.circular(30),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(String text, Color color) {
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoute.slideronePage);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Search for",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              height: 55,
              width: 200,
              margin: const EdgeInsets.only(top: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 10,
                child: Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff383838),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, String actionText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            actionText,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff22222280),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProductsRow(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildProductCard(
          context,
          "Engine part",
          "AED 33",
          "https://images.pexels.com/photos/5158155/pexels-photo-5158155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          AppRoute.enginPage,
          size,
        ),
        _buildProductCard(
          context,
          "Body part",
          "AED 33",
          "https://images.pexels.com/photos/188777/pexels-photo-188777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          AppRoute.bodypartPage,
          size,
        ),
      ],
    );
  }

  Widget _buildLatestProductsRow(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildProductCard(
          context,
          "Head Light",
          "AED 33",
          "https://images.pexels.com/photos/4480465/pexels-photo-4480465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          AppRoute.headlightPage,
          size,
        ),
        _buildProductCard(
          context,
          "Break Switch",
          "AED 33",
          "https://images.pexels.com/photos/13015296/pexels-photo-13015296.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          AppRoute.breakswitchPage,
          size,
        ),
      ],
    );
  }

  Widget _buildProductCard(
    BuildContext context,
    String title,
    String price,
    String imageUrl,
    String destination,
    Size size,
  ) {
    return InkWell(
      onTap: () {
        context.pushNamed(destination);
      },
      child: Container(
        height: size.height * 0.36,
        width: size.width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: TextStyle(
                fontSize: 18,
                color: Colors.amber[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
