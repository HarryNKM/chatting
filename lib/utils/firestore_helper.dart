import 'package:chat2/screen/profile/model/profile_model.dart';
import 'package:chat2/utils/firebase_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper
{
  static FirestoreHelper helper=FirestoreHelper._();
  FirestoreHelper._();

  FirebaseFirestore firestore=FirebaseFirestore.instance;
  String? Uid;

  String getUID()
   {
    return Uid= FirebaseHelper.helper.user!.uid;
  }
  Future<void> getUser(ProfileModel m1)
  async {
   await firestore.collection("user").doc(Uid).set(m1.modelToMap());
  }
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData()
  {
    return firestore.collection("user").doc(Uid).get();
  }

  Future<void> currentUser()
  async {
    DocumentSnapshot snapshot=
    await firestore.collection("user").doc(Uid).get();
    Map m1=snapshot.data() as Map;
    ProfileModel.mapToModel(m1);
  }
  Future<List<ProfileModel>?> getAllUsers()
  async {
    List<ProfileModel>? listData;
   QuerySnapshot snapshot = await
    firestore.collection("user").get();
   List<QueryDocumentSnapshot> document = snapshot.docs;
   for (var x in document) {
     var ket = x.id;
     Map m1 = x.data() as Map;

     ProfileModel model = ProfileModel.mapToModel(m1);
     listData!.add(model);
   }
   return listData;
  }
}