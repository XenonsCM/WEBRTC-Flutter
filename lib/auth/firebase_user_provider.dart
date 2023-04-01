import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VafeeFirebaseUser {
  VafeeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VafeeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VafeeFirebaseUser> vafeeFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VafeeFirebaseUser>(
      (user) {
        currentUser = VafeeFirebaseUser(user);
        return currentUser!;
      },
    );
