import 'package:cloud_firestore/cloud_firestore.dart';
import 'clothing_item.dart';

class ClosetService {
  final _db = FirebaseFirestore.instance;

  Future<void> addClothingItem(ClothingItem item) async {
    await _db.collection('closet').doc(item.id).set(item.toMap());
  }

  Future<List<ClothingItem>> getItems() async {
    final snapshot = await _db.collection('closet').get();
    return snapshot.docs.map((doc) => ClothingItem.fromMap(doc.data())).toList();
  }

  Future<void> deleteItem(String id) async {
    await _db.collection('closet').doc(id).delete();
  }
}
