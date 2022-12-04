import 'package:flutter_instagram_clone/src/models/instagram_user.dart';
import 'package:get/get.dart';
import '../repository/user_repository.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  Rx<IUser> user = IUser().obs;
  Future<IUser?> loginUser(String uid) async {
    var userData = await UserRepository.loginUserByUid(uid);
    print(userData);
    return userData;
  }

  void signup(IUser signupUser) async {
    var result = await UserRepository.signup(signupUser);
    if (result) {
      user(signupUser);
    }
  }
}
