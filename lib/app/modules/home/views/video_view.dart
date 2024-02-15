import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:navigation_drawer_flutter_getx/app/modules/common/navigation_drawer.dart';

import '../controllers/home_controller.dart';

class VideoView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer1(),
      appBar: AppBar(
        title: InkWell(
            onTap: ()=> print('VideoView**********8${Get.routeTree}'),
            child: Text('Video View')),
        centerTitle: true,
      ),
     
    );
  }
}
