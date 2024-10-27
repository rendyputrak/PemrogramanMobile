import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'package:linkaja/screens/akun.dart';
import 'package:linkaja/screens/bayar.dart';
import 'package:linkaja/screens/beranda.dart';
import 'package:linkaja/screens/pesan.dart';
import 'package:linkaja/screens/riwayat.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    Beranda(),
    Riwayat(),
    Bayar(),
    Pesan(),
    Akun(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFFFF0000),
            unselectedItemColor: const Color(0xFFB4B8BB),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sticky_note_2),
                label: 'Riwayat',
              ),
              BottomNavigationBarItem(
                icon:
                    SizedBox.shrink(), // Mengosongkan ruang untuk tombol Bayar
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.markunread),
                label: 'Pesan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Akun',
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: GestureDetector(
              onTap: () => _onItemTapped(2),
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF0000),
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 4), // Jarak antara ikon dan label
                  Text(
                    'Bayar',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i, Offstage(offstage: _selectedIndex != i, child: screen)))
            .values
            .toList(),
      ),
    );
  }
}
