import 'package:flutter/material.dart';

class ClothingTile extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String category;

  const ClothingTile({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
      ),
      title: Text(name),
      subtitle: Text(category),
      trailing: const Icon(Icons.more_vert),
    );
  }
}
