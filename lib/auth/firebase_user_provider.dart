import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EllappFirebaseUser {
  EllappFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EllappFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EllappFirebaseUser> ellappFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EllappFirebaseUser>(
      (user) {
        currentUser = EllappFirebaseUser(user);
        return currentUser!;
      },
    );
