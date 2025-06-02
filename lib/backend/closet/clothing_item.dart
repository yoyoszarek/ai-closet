class ClothingItem {
  final String id;
  final String name;
  final String category;
  final String aesthetic;
  final String closet;
  final String imageUrl;
  final List<String> tags;

  ClothingItem({
    required this.id,
    required this.name,
    required this.category,
    required this.aesthetic,
    required this.closet,
    required this.imageUrl,
    required this.tags,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'category': category,
    'aesthetic': aesthetic,
    'closet': closet,
    'imageUrl': imageUrl,
    'tags': tags,
  };

  static ClothingItem fromMap(Map<String, dynamic> map) => ClothingItem(
    id: map['id'],
    name: map['name'],
    category: map['category'],
    aesthetic: map['aesthetic'],
    closet: map['closet'],
    imageUrl: map['imageUrl'],
    tags: List<String>.from(map['tags']),
  );
}
