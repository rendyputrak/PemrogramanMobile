import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Akun extends StatelessWidget {
  const Akun({super.key});

  Widget header() {
    return Container(
      width: double.infinity,
      height: 85,
      color: Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rendy Putra Kusuma',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '+6281234567890',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/pic.jpg'),
            ),
          ],
        ),
      ),
    );
  }

  Widget separator() {
    return Container(
      height: 4,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }

  Widget section1() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildsection1('Tipe Akun', Icons.keyboard_arrow_right_outlined,
              'BASIC', Colors.red),
          buildsection1('Pengaturan Akun', Icons.keyboard_arrow_right_outlined,
              '', Colors.red),
          buildsection1('LinkAja Syariah', Icons.keyboard_arrow_right_outlined,
              'Tidak Aktif', Colors.red),
          buildsection1('Metode Pembayaran',
              Icons.keyboard_arrow_right_outlined, '', Colors.red,
              showDivider: false),
        ],
      ),
    );
  }

  Widget buildsection1(
      String title, IconData icon, String rightText, Color iconColor,
      {bool showDivider = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  rightText,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 8),
                Icon(icon, size: 16, color: iconColor),
              ],
            ),
          ],
        ),
        if (showDivider) Divider(height: 0),
      ],
    );
  }

  Widget section2() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildsection2('Email', Icons.keyboard_arrow_right_outlined,
              '2241720124@polinema.ac.id', Colors.red),
          buildsection2('Pemulihan Akun Lama',
              Icons.keyboard_arrow_right_outlined, '', Colors.red),
          buildsection2('Pertanyaan Keamanan',
              Icons.keyboard_arrow_right_outlined, 'Belum Diatur', Colors.red),
          buildsection2('Pengaturan PIN', Icons.keyboard_arrow_right_outlined,
              '', Colors.red),
          buildsection2('Bahasa', Icons.keyboard_arrow_right_outlined,
              'Indonesia', Colors.red,
              showDivider: false),
        ],
      ),
    );
  }

  Widget buildsection2(
      String title, IconData icon, String rightText, Color iconColor,
      {bool showDivider = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  rightText,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 8),
                Icon(icon, size: 16, color: iconColor),
              ],
            ),
          ],
        ),
        if (showDivider) Divider(height: 0),
      ],
    );
  }

  Widget section3() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildsection3('Ketentuan Layanan',
              Icons.keyboard_arrow_right_outlined, '', Colors.red),
          buildsection3('Kebijakan Privasi',
              Icons.keyboard_arrow_right_outlined, '', Colors.red),
          buildsection3('Pusat Bantuan', Icons.keyboard_arrow_right_outlined,
              '', Colors.red,
              showDivider: false),
        ],
      ),
    );
  }

  Widget buildsection3(
      String title, IconData icon, String rightText, Color iconColor,
      {bool showDivider = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  rightText,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 8),
                Icon(icon, size: 16, color: iconColor),
              ],
            ),
          ],
        ),
        if (showDivider) Divider(height: 0),
      ],
    );
  }

  Widget logoutButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: Alignment.center,
      child: Text(
        'Keluar',
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            separator(),
            section1(),
            separator(),
            section2(),
            separator(),
            section3(),
            separator(),
            logoutButton(),
          ],
        ),
      ),
    );
  }
}
