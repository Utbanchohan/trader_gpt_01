import 'dart:io';
// import 'package:firebase_core/firebase_core.dart';


class FirebaseStorageService {
  // static final FirebaseAuth _auth = FirebaseAuth.instance;
  // static final FirebaseStorage _storage = FirebaseStorage.instance;

  // static Future<void> _ensureAuthenticated() async {
  //   if (Firebase.apps.isEmpty) {
  //     await Firebase.initializeApp(
  //       options: DefaultFirebaseOptions.currentPlatform,
  //     );
  //   }

  //   if (_auth.currentUser == null) {
  //     await _auth.signInAnonymously();
  //   }
  // }

  // static Future<String> uploadFile(File file, {String? path}) async {
  //   try {
  //     await _ensureAuthenticated();

  //     final fileName = DateTime.now().millisecondsSinceEpoch.toString();
  //     final storageRef = _storage.ref().child(path ?? 'uploads/$fileName');

  //     UploadTask uploadTask = storageRef.putFile(file);
  //     TaskSnapshot snapshot = await uploadTask;
  //     String url = await snapshot.ref.getDownloadURL();
  //     // ignore: avoid_print
  //     print("url $url");
  //     return url;
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print('Error uploading file: $e');
  //     rethrow;
  //   }
  // }
}
