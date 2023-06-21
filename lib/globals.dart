library fresh.globals;

import 'package:fresh/utilities/authentication.dart';
import 'package:fresh/utilities/skin_type.dart';

import 'models/User.model.dart';
SkinTypeUtils? skinTypeGlobal;
UserModel? user;
fetchSkinType(){
  skinTypeGlobal = SkinTypeUtils();
}
fetchUser({Function? callback}) {
  Authentication().getUser().then((value) {
  user = value;
  if(callback !=null)  callback();

  });
}
