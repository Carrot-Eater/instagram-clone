import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/instagram_user.dart';

class UserRepository {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  static Future<IUser?> loginUserByUid(String uid) async {
    print(uid);
    var data = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get();

    if (data.size == 0) {
      return null;
    } else {
      return IUser.fromJson(data.docs.first.data());
    }
  }

  static Future<bool> signup(IUser user) async {
    try {
      await FirebaseFirestore.instance.collection('users').add(user.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }
}
