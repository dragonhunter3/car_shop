import 'package:car_shop/src/features/settings/controller/notification_controller.dart';
import 'package:car_shop/src/routes/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late double height, width;

  Widget buildSettingItem({
    required String title,
    VoidCallback? onTap,
    Widget? trailing,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buildSettingItem(
              title: "Language",
              onTap: () => context.pushNamed(AppRoute.dashboardPage),
              trailing: const Icon(Icons.arrow_forward_ios, size: 13),
            ),
            SizedBox(height: height * 0.05),
            buildSettingItem(
              title: "Addresses",
              onTap: () => context.pushNamed(AppRoute.addressPage),
              trailing: const Icon(Icons.arrow_forward_ios, size: 13),
            ),
            SizedBox(height: height * 0.05),
            buildSettingItem(
              title: "Privacy policy",
              trailing: const Icon(Icons.arrow_forward_ios, size: 13),
            ),
            SizedBox(height: height * 0.03),

            /// ✅ Notification Toggle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Notification",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      settingsProvider.toggleNotification();
                    },
                    child: Icon(
                      settingsProvider.notificationsEnabled
                          ? Icons.toggle_on_rounded
                          : Icons.toggle_off_rounded,
                      size: 60,
                      color: settingsProvider.notificationsEnabled
                          ? Colors.amber[600]
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            /// Logout
            Row(
              children: const [
                Icon(Icons.logout_outlined, color: Colors.black38),
                SizedBox(width: 8),
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
