// lib/widgets/profile_page.dart
import 'package:flutter/material.dart';
import 'package:perpus1/models/Profile.dart';


class ProfilePage extends StatelessWidget {
  final Profile profile;

  ProfilePage({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(profile.avatarUrl),
            ),
            SizedBox(height: 16),
            Text(
              profile.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              profile.email,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            // Tambahkan detail lainnya atau tombol aksi di sini
          ],
        ),
      ),
    );
  }
}
