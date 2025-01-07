import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/login_model.dart';


class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Login>> fetchdetails() {
    return _firestore.collection('login').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Login.fromMap(doc.data(), doc.id);
      }).toList();
    });
  }
}
