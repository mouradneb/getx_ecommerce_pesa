import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = new GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    // Fetch Data
  }

  @override
  void onReady() {
    // Widget as rendered
    super.onReady();
  }

  @override
  void onClose() {
    // Delete From Memrory
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    GoogleSignInAuthentication? authentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: authentication?.idToken,
        accessToken: authentication?.accessToken);

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    print(userCredential.user);
  }
}
