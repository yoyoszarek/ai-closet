import 'package:flutter/material.dart';
import '../widgets/closet_card.dart';
import 'add_item_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Closets")),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: const [
          //ClosetCard(title: "Casual", icon: Icons.tshirt_crew),
          ClosetCard(title: "Work", icon: Icons.business_center),
          ClosetCard(title: "Y2K", icon: Icons.star),
          ClosetCard(title: "Summer", icon: Icons.sunny),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddItemScreen())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
