import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:culinar/feature/auth/data/repositories/user_repository.dart';
import 'package:culinar/feature/auth/domain/entity/user_model.dart';

import 'package:firebase_auth/firebase_auth.dart';

class UserFirebaseRepository implements UserRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  @override
   Future<MyUser?> getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        return MyUser(userId: user.uid, email: user.email ?? '', name: '');
      } else {
        return null;
      }
    } catch (e) {
      print("Ошибка при получении текущего пользователя: $e");
      return null;
    }
  }

  @override
  Future<MyUser?> getUser(String userId) async {
    try {
      DocumentSnapshot snapshot =
          await _firestore.collection('users').doc(userId).get();
      if (snapshot.exists) {
        return MyUser.fromJson(snapshot.data() as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (e) {
      print("Ошибка при получении пользователя: $e");
      return null;
    }
  }

  @override
  Future<void> createUser(MyUser user) async {
    try {
      await _firestore.collection('users').doc(user.userId).set(user.toJson());
    } catch (e) {
      print("Ошибка при создании пользователя: $e");
    }
  }

  @override
  Future<void> updateUser(MyUser user) async {
    try {
      await _firestore.collection('users').doc(user.userId).update(user.toJson());
    } catch (e) {
      print("Ошибка при обновлении пользователя: $e");
    }
  }

  @override
  Future<void> deleteUser(String userId) async {
   try {
      await _firestore.collection('users').doc(userId).delete();
    } catch (e) {
      print("Ошибка при удалении пользователя: $e");
    }
  }

  @override
  Future<bool> isEmailRegistered(String email) async {
    try {
      QuerySnapshot querySnapshot = await _firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .get();
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      print("Ошибка при проверке регистрации электронной почты: $e");
      return false;
    }
  }

@override
Future<MyUser?> signInWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return MyUser(userId: userCredential.user!.uid, email: email, name: 'user');
  } on FirebaseAuthException catch (e) {
    print("Ошибка при входе в систему: ${e.code} - ${e.message}");
    return null;
  } catch (e) {
    print("Неизвестная ошибка при входе в систему: $e");
    return null;
  }
}


  @override
  Future<MyUser?> signUpWithEmailAndPassword(
      String email, String password, String name) async {
   try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      MyUser newUser = MyUser(userId: userCredential.user!.uid, email: email, name: name);
      await createUser(newUser);
      return newUser;
    } catch (e) {
      print("Ошибка при регистрации: $e");
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
