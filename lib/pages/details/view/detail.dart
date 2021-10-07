import 'package:flutter/material.dart';
import 'package:flutter_getx_app/pages/home/controller/home_controller.dart';
import 'package:flutter_getx_app/services/api_services.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiServices>();
    final homeController = Get.find<HomeController>();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Get.back();
            // print(apiService.fetchTextFromApi());
          print(homeController.count);
          },
        ),
      ),
    );
  }
}
