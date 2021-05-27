import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String id;
  final String email;
  final String? name;
  final String? photoUrl;

  UserModel({
    required this.id,
    required this.email,
    this.name,
    this.photoUrl,
  });

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
        id: account.id,
        email: account.email,
        name: account.displayName,
        photoUrl: account.photoUrl);
  }
}
