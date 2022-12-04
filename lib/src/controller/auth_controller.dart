import 'package:get/get.dart';
import '../repository/user_repository.dart';

class AuthController extends GetxController {
  Future<bool?> loginUser(String uid) async {
    var userData = await UserRepository.loginUserByUid(uid);
    print(userData);
    return userData;
  }
}
