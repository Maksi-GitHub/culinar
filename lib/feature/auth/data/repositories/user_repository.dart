import 'package:culinar/feature/auth/domain/entity/user_model.dart';

abstract class UserRepository {

  Future<MyUser?> getCurrentUser();
  
  Future<MyUser?> getUser(String userId);

  Future<void> createUser(MyUser user);

  Future<void> updateUser(MyUser user);

  Future<void> deleteUser(String userId);

  Future<bool> isEmailRegistered(String email);

  Future<MyUser?> signInWithEmailAndPassword(String email, String password);

  Future<MyUser?> signUpWithEmailAndPassword(String email, String password, String name);

  Future<void> signOut();
}