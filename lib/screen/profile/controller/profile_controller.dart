import 'package:chat2/screen/profile/model/profile_model.dart';
import 'package:chat2/utils/firestore_helper.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
{
  RxList<ProfileModel> l1= <ProfileModel>[].obs;
  Future<void> getData()
  async {
    List<ProfileModel>? data= await FirestoreHelper.helper.getAllUsers();
    l1.value=data as List<ProfileModel>;

  }
}