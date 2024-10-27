import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pesan extends StatefulWidget {
  const Pesan({super.key});

  @override
  _PesanState createState() => _PesanState();
}

class _PesanState extends State<Pesan> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageContent(
      title: 'Tidak Ada Notifikasi',
      subtitle:
          'Jangan khawatir, kita pasti kasih tau kalau ada notifikasi untuk kamu!',
      imagePath: 'images/pesan.jpg',
    ),
    PageContent(
      title: 'Tidak Ada Pesan',
      subtitle:
          'Jangan khawatir, kita pasti kasih tau kalau ada pesan untuk kamu!',
      imagePath: 'images/pesan.jpg',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header1() {
      return Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        color: Color(0xffffffff),
        child: Text(
          'Pesan',
          style: GoogleFonts.poppins().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      );
    }

    Widget header2() {
      return Container(
        width: double.infinity,
        height: 50,
        color: Color(0xffffffff),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _onItemTapped(0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _currentIndex == 0
                            ? Color(0xFFFF0000)
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    'Pending',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _onItemTapped(1),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _currentIndex == 1
                            ? Color(0xFFFF0000)
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    'Selesai',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header1(),
          header2(),
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const PageContent({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 200,
            width: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
