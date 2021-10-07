import 'package:flutter/material.dart';
import 'package:flutter_getx_app/pages/details/binding/detail_binding.dart';
import 'package:flutter_getx_app/pages/details/view/detail.dart';
import 'package:flutter_getx_app/pages/home/binding/home_binding.dart';
import 'package:flutter_getx_app/pages/home/view/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        getPages: [
        GetPage(name: '/home', page: () => const HomeScreen(),binding: HomeBinding()),
        GetPage(name: '/detail', page: ()=>const DetailScreen(),binding: DetailBinding())
    ],
    initialRoute: '/home',
    );
    }
}

