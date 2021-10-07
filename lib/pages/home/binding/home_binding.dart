import 'package:flutter_getx_app/pages/home/controller/home_controller.dart';
import 'package:flutter_getx_app/services/api_services.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.put(ApiServices()); // for dependecy mangement
     Get.put(HomeController()); // for state mangement
  }

}