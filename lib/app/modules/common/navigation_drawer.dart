import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_drawer_flutter_getx/app/routes/app_pages.dart';

class NavigationDrawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            Divider(
              color: Colors.grey,
            ),
            buildDrawerItem(
              icon: Icons.photo,
              text: "Photo",
              onTap: () => navigate(0),
              tileColor: Get.currentRoute == Routes.PHOTO ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.PHOTO
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
              icon: Icons.video_call,
              text: "Video",
              onTap: () => navigate(1),
              tileColor: Get.currentRoute == Routes.VIDEO ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.VIDEO
                  ? Colors.white
                  : Colors.black,
            ),
            buildDrawerItem(
                icon: Icons.chat,
                text: "Chat",
                onTap: () => navigate(2),
                tileColor: Get.currentRoute == Routes.CHAT ? Colors.blue : null,
                textIconColor: Get.currentRoute == Routes.CHAT
                    ? Colors.white
                    : Colors.black),
          ],
        ),
      ),
    );
  }


  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    print('object*****${Get.previousRoute}');
    if (index == 0) {
      Get.offAllNamed(Routes.PHOTO);
    }
     else if (index == 1) {
      Get.offAndToNamed(Routes.VIDEO);
    }
     if (index == 2) {
      Get.offAndToNamed(Routes.CHAT);
    }
  }
}
