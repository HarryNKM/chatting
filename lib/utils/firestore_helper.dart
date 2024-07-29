import 'package:chat2/screen/profile/model/profile_model.dart';
import 'package:chat2/utils/firebase_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {
  static FirestoreHelper helper = FirestoreHelper._();

  FirestoreHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String? Uid;

  String getUID() {
    return Uid = FirebaseHelper.helper.user!.uid;
  }

  Future<void> setUser(ProfileModel m1) async {
    await firestore.collection("user").doc(Uid).set(m1.modelToMap());
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() {
    return firestore.collection("user").doc(Uid).get();
  }

  Future<void> currentUser() async {
    DocumentSnapshot snapshot =
        await firestore.collection("user").doc(Uid).get();
    Map m1 = snapshot.data() as Map;
    ProfileModel.mapToModel(m1);
  }

}
