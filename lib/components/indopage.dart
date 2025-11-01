import 'package:flutter/material.dart';

class IndoPage extends StatelessWidget {
  const IndoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy bab
    final List<Map<String, dynamic>> babList = [
      {
        'judul': 'Esai',
        'icon': Icons.menu_book,
        'fitur': Icons.flash_on,
        'progress': 0.0,
        'gratis': true,
      },
      {
        'judul': 'Karya Ilmiah',
        'icon': Icons.menu_book,
        'fitur': Icons.star,
        'progress': 0.0,
        'gratis': true,
      },
      {
        'judul': 'Teks Berita',
        'icon': Icons.menu_book,
        'fitur': Icons.flash_on,
        'progress': 0.0,
        'gratis': false,
      },
      {
        'judul': 'Resensi',
        'icon': Icons.menu_book,
        'fitur': Icons.star,
        'progress': 0.0,
        'gratis': false,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Cari Bab...',
              hintStyle: TextStyle(color: Colors.grey[500]),
              prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Top Banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.flag, color: Colors.white, size: 32),
                const SizedBox(width: 12),
                const Text(
                  'Bahasa Indonesia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Judul section
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Semua Bab',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // ListView Card Bab
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: babList.length,
              itemBuilder: (context, index) {
                final bab = babList[index];
                return Stack(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.white.withOpacity(0.95),
                      elevation: 2,
                      margin: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 16,
                        ),
                        child: Row(
                          children: [
                            // Ikon bab
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                bab['icon'],
                                color: Colors.red[700],
                                size: 28,
                              ),
                            ),
                            const SizedBox(width: 14),
                            // Judul dan fitur
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bab['judul'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Icon(
                                        bab['fitur'],
                                        color: Colors.amber,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        bab['fitur'] == Icons.flash_on
                                            ? 'Latihan'
                                            : 'Favorit',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  // Progress Bar
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: LinearProgressIndicator(
                                      value: bab['progress'],
                                      minHeight: 6,
                                      backgroundColor: Colors.grey[300],
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.red[700]!,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${(bab['progress'] * 100).toInt()}%',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Tombol download
                            IconButton(
                              icon: Icon(Icons.download, color: Colors.blue),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Badge "1 Sub-bab Gratis"
                    if (bab['gratis'])
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red[700],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                          ),
                          child: const Text(
                            '1 Sub-bab Gratis',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
