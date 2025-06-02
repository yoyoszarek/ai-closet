import 'package:flutter/material.dart';

class PinterestScreen extends StatelessWidget {
  const PinterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final boards = ["Outfits", "Inspo", "Date Night", "Y2K Looks"];

    return Scaffold(
      appBar: AppBar(title: const Text("Pinterest Boards")),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: boards.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(boards[index]),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            // navigate to board view or assign to day
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
