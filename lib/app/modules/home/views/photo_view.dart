import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:navigation_drawer_flutter_getx/app/modules/common/navigation_drawer.dart';

import '../controllers/home_controller.dart';

class PhotoView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer1(),
      appBar: AppBar(
        title: Text('Photo View'),
        centerTitle: true,
      ),
     
    );
  }
}
