//import 'package:flutter_instagram_clone/src/controller/auth_controller.dart';
import 'package:flutter_instagram_clone/src/controller/bottom_nav_controller.dart';
//import 'package:flutter_instagram_clone/src/controller/home_controller.dart';
//import 'package:flutter_instagram_clone/src/controller/mypage_controller.dart';
//import 'package:flutter_instagram_clone/src/controller/upload_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}