import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh/globals.dart' as globals;
import 'package:fresh/models/User.model.dart';

class Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<User?> login(String email, String password) async {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      globals.fetchUser();
      return value;
    });

    return user.user;
  }

  Future<User?> createUser(UserModel userModel) async {
    var user = await auth.createUserWithEmailAndPassword(
        email: userModel.email, password: userModel.password);
    print(userModel.toString());
    await firestore
        .collection("Users")
        .doc(user.user!.uid)
        .set(userModel.toJson());
    globals.user = userModel;
    return user.user;
  }

  Future<UserModel> getUser() async {
    CollectionReference ref = firestore.collection("Users");
    String uid = auth.currentUser!.uid;
    UserModel userModel;
    var document = ref.doc(uid);
    var response = await document.get();
    userModel = UserModel.fromJson(response.data() as dynamic);
    print(auth.currentUser?.displayName.toString());
    globals.user = userModel;
    return userModel;
  }

  Future out() async {
    auth.signOut();
  }
}
