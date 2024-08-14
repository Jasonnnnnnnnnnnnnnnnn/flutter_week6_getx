import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/Home_bindings.dart';
import 'package:test_getx/Home_view.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    initialRoute: '/home' ,
    getPages: [
      GetPage(name: '/home', page: () => Home(), binding: HomeBinding())
    ],
  )
  );
}




