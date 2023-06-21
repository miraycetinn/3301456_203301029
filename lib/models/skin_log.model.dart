import 'package:fresh/globals.dart' as globals;

class SkinLog {
  final int? id;
  final String skinStatus;
  String email = globals.user!.email;
  DateTime dateTime = DateTime.now();

  SkinLog({this.id, required this.skinStatus});

  SkinLog.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        skinStatus = res["skinStatus"],
        email = res["email"],
        dateTime = DateTime.parse(res["dateTime"].trim());

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'skinStatus': skinStatus,
      'dateTime': dateTime,
      'email': email
    };
  }
}
