import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.password});

  factory UserModel.fromFireBaseUser(User User) {
    return UserModel(email: User.email!, name: User.displayName ?? '', password: '');
  }
}
