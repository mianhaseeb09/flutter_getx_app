import 'package:flutter_getx_app/pages/details/controller/detail_Controller.dart';
import 'package:flutter_getx_app/services/api_services.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.put(ApiServices()); // for dependecy mangement
     Get.put(DetailController()); // for state mangement
  }

}