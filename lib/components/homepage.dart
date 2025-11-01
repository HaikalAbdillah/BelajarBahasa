// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'indopage.dart';
import 'profile.dart';

class SubjectCategory {
  final String name;
  final IconData icon;
  final Color color;

  const SubjectCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateToSubject(BuildContext context, String subject) {
    switch (subject) {
      case 'Bahasa\nIndonesia':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const IndoPage()),
        );
        break;
      case 'Bahasa\nInggris':
        // Placeholder untuk halaman Bahasa Inggris
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Halaman Bahasa Inggris akan segera hadir'),
          ),
        );
        break;
      case 'Bahasa\nMadura':
        // Placeholder untuk halaman Bahasa Madura
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Halaman Bahasa Madura akan segera hadir'),
          ),
        );
        break;
      case 'Bahasa\nArab':
        // Placeholder untuk halaman Bahasa Arab
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Halaman Bahasa Arab akan segera hadir'),
          ),
        );
        break;
    }
  }

  final List<SubjectCategory> subjects = const [
    SubjectCategory(
      name: 'Bahasa\nIndonesia',
      icon: Icons.book,
      color: Colors.red, // Warna merah untuk Indonesia
    ),
    SubjectCategory(
      name: 'Bahasa\nInggris',
      icon: Icons.language,
      color: Colors.blue, // Warna biru untuk Inggris
    ),
    SubjectCategory(
      name: 'Bahasa\nMadura',
      icon: Icons.menu_book,
      color: Colors.green, // Warna hijau untuk Madura
    ),
    SubjectCategory(
      name: 'Bahasa\nArab',
      icon: Icons.auto_stories,
      color: Colors.amber, // Warna amber/kuning untuk Arab
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Custom Header
            Container(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 24,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF1E3A5F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Baris pertama: Avatar + Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatar dan Level
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3),
                                width: 2,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.purple,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Level 1',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple.shade300,
                              Colors.purple.shade500,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.people, color: Colors.white),
                          label: const Text(
                            'Mahasiswa/Umum',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Apa Ayoooo',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                          size: 22,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Pilih Mata Pelajaran',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      height: 160,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Row(
                          children: subjects.map((subject) {
                            return InkWell(
                              onTap: () =>
                                  _navigateToSubject(context, subject.name),
                              child: Container(
                                width: 100,
                                margin: const EdgeInsets.only(right: 16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: subject.color.withOpacity(0.1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        subject.icon,
                                        color: subject.color,
                                        size: 32,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      subject.name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[800],
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.teal[700]!,
        buttonBackgroundColor: Colors.amber,
        height: 65,
        index: _selectedIndex,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.school, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 2) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Eitss Erorrrrr'),
                content: Text('Yeeeeee'),
              ),
            );
          }
        },
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
      ),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage();
  @override
  Widget build(BuildContext context) {
    return const ProfileContent();
  }
}
