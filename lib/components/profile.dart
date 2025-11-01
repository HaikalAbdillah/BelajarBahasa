import 'package:flutter/material.dart';

class ProfPage extends StatelessWidget {
  const ProfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YEEE BALIK ENGGAK'),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('BALIKAN YEEEEEE'),
        ),
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(radius: 48, child: Icon(Icons.person, size: 48)),
          const SizedBox(height: 16),
          Text(
            'Nama Pengguna',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'haikal mungkin@gmail.com',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Edit profile')));
            },
            icon: const Icon(Icons.edit),
            label: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
