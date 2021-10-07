import 'package:flutter/material.dart';
import 'package:flutter_getx_app/pages/home/controller/home_controller.dart';
import 'package:flutter_getx_app/services/api_services.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snack.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Obx(
                   ()=>Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
            ),
             ),
            TextButton(
              onPressed: () {
                // Get.toNamed('/detail');
                // print(apiService.fetchTextFromApi());

                homeController.increment();
              },
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 25),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/detail');

                // Get.defaultDialog(title: 'This is dialog');
                Get.snackbar("Title", 'This is Getx snack bar',snackPosition: SnackPosition.BOTTOM);
                // print(apiService.fetchTextFromApi());

                //homeController.increment();
              },
              child: const Text(
                'Go to detail',
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
