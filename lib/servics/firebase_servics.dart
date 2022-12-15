import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
static  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

 static Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getData() async {
    QuerySnapshot<Map<String, dynamic>> data = await firebaseFirestore.collection('speedLone').get();
    // print(data.docs.map((e) => e.toString()));
   return data.docs;
  }

}