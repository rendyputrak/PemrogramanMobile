import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> promotions = [
      {
        'title': 'GRAB',
        'description': 'Diskon 90% naik GrabCar pakai LinkAja',
        'image': 'assets/images/promo1.jpg',
      },
      {
        'title': 'LINKAJA',
        'description': 'CASH OUT - TARIK TUNAI BANK SYARIAH INDONESIA',
        'image': 'assets/images/promo2.jpg',
      },
      {
        'title': 'GRAB',
        'description': 'Diskon 50% Jajan di GrabFood pakai LinkAja',
        'image': 'assets/images/promo3.jpg',
      },
      {
        'title': 'PERTAMINA',
        'description': 'Promo Bright Gas MyPertamina',
        'image': 'assets/images/promo4.jpg',
      },
      {
        'title': 'LINKAJA',
        'description': 'Beli Voucher Games Harga Terjangkau Disini!',
        'image': 'assets/images/promo5.jpg',
      },
    ];

    Widget header1() {
      return Stack(
        children: [
          Image.asset(
            'images/cityscape.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 15),
                child: Image.asset('images/linkaja.png'),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.favorite_border_outlined),
                  ),
                  SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 15),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.support_agent_outlined),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    Widget header2() {
      return Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFFF0000),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hai, Rendy Putra Kusuma',
              style: GoogleFonts.poppins().copyWith(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffffffff)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo Kamu',
                          style: GoogleFonts.poppins().copyWith(fontSize: 10)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text('Rp 999.999.999',
                              style:
                                  GoogleFonts.poppins().copyWith(fontSize: 10)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_circle_right,
                            size: 14,
                            color: Color(0xFFFF0000),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffffffff)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo Bonus',
                          style: GoogleFonts.poppins().copyWith(fontSize: 10)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on_rounded,
                            size: 14,
                            color: Color(0xffFFD700),
                          ),
                          SizedBox(width: 5),
                          Text('0',
                              style:
                                  GoogleFonts.poppins().copyWith(fontSize: 10)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_circle_right,
                            size: 14,
                            color: Color(0xFFFF0000),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buildfiturutama(IconData icon, String label) {
      return Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: Color(0xFFFF0000),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: GoogleFonts.poppins().copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget fiturutama() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xFFB4B8BB), width: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildfiturutama(Icons.add_circle_outline, 'Isi Saldo'),
            buildfiturutama(Icons.arrow_circle_down_outlined, 'Tarik Saldo'),
            buildfiturutama(Icons.send_to_mobile_outlined, 'Kirim Uang'),
            buildfiturutama(Icons.grid_view_outlined, 'Semua'),
          ],
        ),
      );
    }

    Widget buildfiturtambahan(IconData icon, String label) {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: Color(0xFFFF0000),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: GoogleFonts.poppins().copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget fiturtambahan() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xfffef7ff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildfiturtambahan(Icons.phonelink_ring_outlined, 'Pulsa/Data'),
                buildfiturtambahan(Icons.electric_bolt_outlined, 'Listrik'),
                buildfiturtambahan(Icons.settings_input_antenna_outlined,
                    'TV Kabel & Internet'),
                buildfiturtambahan(
                    Icons.credit_card_outlined, 'Kartu Uang Elektronik'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildfiturtambahan(Icons.church_outlined, 'Gereja'),
                buildfiturtambahan(Icons.handshake_outlined, 'Infaq'),
                buildfiturtambahan(
                    Icons.card_giftcard_outlined, 'Donasi Lainnya'),
                buildfiturtambahan(Icons.more_horiz_outlined, 'Lainnya'),
              ],
            ),
          ],
        ),
      );
    }

    Widget cardPromo(Map<String, String> promo) {
      return Card(
        child: Container(
          width: 330,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  promo['image']!,
                  fit: BoxFit.contain,
                  width: 340,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget promo() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 158,
            aspectRatio: 2.17 / 1,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 300),
            autoPlayCurve: Curves.easeIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {},
            scrollDirection: Axis.horizontal,
          ),
          items: promotions.map((promo) => cardPromo(promo)).toList(),
        ),
      );
    }

    Widget cardPromoMenarik(Map<String, String> promo) {
      return Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            promo['image']!,
            fit: BoxFit.cover,
            width: 340,
            height: 150,
          ),
        ),
      );
    }

    Widget promoDetails(Map<String, String> promo) {
      return Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              promo['title']!,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              promo['description']!,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    Widget promomenarik() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo Menarik',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Semua',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFFF0000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            CarouselSlider(
              options: CarouselOptions(
                height: 220,
                aspectRatio: 2.17 / 1,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              items: promotions.map((promo) {
                return Column(
                  children: [
                    cardPromoMenarik(promo),
                    promoDetails(promo),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget cardInfo(Map<String, String> promo) {
      return Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            promo['image']!,
            fit: BoxFit.cover,
            width: 340,
            height: 150,
          ),
        ),
      );
    }

    Widget infoDetails(Map<String, String> promo) {
      return Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              promo['title']!,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              promo['description']!,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    Widget info() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Info Terbaru',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            CarouselSlider(
              options: CarouselOptions(
                height: 260,
                aspectRatio: 2.17 / 1,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              items: promotions.map((promo) {
                return Column(
                  children: [
                    cardPromoMenarik(promo),
                    promoDetails(promo),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header1(),
            header2(),
            fiturutama(),
            fiturtambahan(),
            promo(),
            promomenarik(),
            info(),
          ],
        ),
      ),
    );
  }
}
