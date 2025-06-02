import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final picker = ImagePicker();
  XFile? _image;
  final _nameController = TextEditingController();
  String category = 'Top';
  String aesthetic = 'Y2K';
  String closet = 'Main';

  Future<void> pickImage() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    setState(() => _image = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Clothing Item")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            GestureDetector(
              onTap: pickImage,
              child: _image == null
                  ? Container(
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(child: Text("Tap to upload image")),
                    )
                  : Image.file(
                      File(_image!.path),
                      height: 180,
                      fit: BoxFit.cover,
                    ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: category,
              decoration: const InputDecoration(labelText: "Category"),
              items: ["Top", "Bottom", "Shoes", "Outerwear", "Accessory"]
                  .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (val) => setState(() => category = val!),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: aesthetic,
              decoration: const InputDecoration(labelText: "Aesthetic"),
              items: ["Y2K", "Minimalist", "Streetwear", "Boho"]
                  .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (val) => setState(() => aesthetic = val!),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              value: closet,
              decoration: const InputDecoration(labelText: "Closet"),
              items: ["Main", "Summer", "Work", "Party"]
                  .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                  .toList(),
              onChanged: (val) => setState(() => closet = val!),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // save to Firestore
              },
              child: const Text("Save Item"),
            )
          ],
        ),
      ),
    );
  }
}
