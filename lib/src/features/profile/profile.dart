import 'package:car_shop/src/common/constants/global_variables.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late double height, width;

  Widget buildProfileField({
    required String label,
    required String value,
    required VoidCallback onEdit,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            label,
            style: textTheme(context).headlineSmall,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: onEdit,
              child: Icon(
                Icons.edit,
                color: Colors.amber[600],
                size: 25,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Container(height: 1, width: width, color: const Color(0xffB4B4B4)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.96,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: height * 0.46,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/1615776/pexels-photo-1615776.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BackButton(color: Colors.white),
                        Spacer(),
                        Center(
                          child: Text(
                            "M Shahid",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[600],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 340,
                  child: Container(
                    height: height * 0.57,
                    width: width,
                    padding: EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        buildProfileField(
                            label: "Name",
                            value: "Muhammad Shahid",
                            onEdit: () => context.pushNamed(AppRoute.namePage)),
                        const SizedBox(height: 30),
                        buildProfileField(
                            label: "Email",
                            value: "muhammadshahidmalghani10@gmail.com",
                            onEdit: () =>
                                context.pushNamed(AppRoute.emailPage)),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: Text("Password",
                                  style: textTheme(context).headlineSmall),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Text(
                                    "Change Password",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () =>
                                      context.pushNamed(AppRoute.passwordPage),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.amber[600],
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
