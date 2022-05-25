import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uts_flutter/loginpage.dart';
import 'package:uts_flutter/regist.dart';
import 'package:auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
    'assets/images/05.jpg',
    'assets/images/06.jpg',
    'assets/images/07.jpg',
    'assets/images/08.jpg',
  ];

class cv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/latar.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:  AssetImage('assets/images/tonyfp.jpg'),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Tony Afriyanto",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                     Text(
                      "20180801323",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 208, 208, 208),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),

          SizedBox(
            height: 20,
          ),
        Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Pekerjaan ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37.0),
                child: Text(
                  'Mahasiswa',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height:  10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Jenis Kelamin ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  'Laki Laki',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Tanggal Lahir ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '  28 April 1998',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
           SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Kebangsaan ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '  Indonesia',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Detail Infromasi',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.mail, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'tony.afriyanto48@gmail.com',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.phone, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '+62 - 89647768544',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.home_outlined, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Cikupa Kabupaten Tangerang 15710',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(Icons.work_outlined),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Riwayat Pekerjaan',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
             ],
          ),
          SizedBox(
            height: 10,
          ),
         ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('PT. Cometa Can (Oprator Produksi) '),
            minLeadingWidth : 10,
            subtitle: Text('10 Agustus 2017 - 30 April 2018',
                style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                ),
            ),
          ),
        ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('7Point Event Management (Team Teknis) '),
            minLeadingWidth : 10,
            subtitle: Text('1 Mei 2018 - 2 Februari 2021',
                style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                ),
            ),
          ),
            SizedBox(height: 10.0),
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(Icons.school_outlined),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Riwayat Pekerjaan',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
             ],
          ),
          SizedBox(
            height: 10,
          ),
         ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('SDN Pasir Jaya'),
            minLeadingWidth : 10,
          ),
        ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('SMP Negeri 3 Cikupa '),
            minLeadingWidth : 10,
          ),
          ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('SMA Negeri 4 Kabupaten Tangerang'),
            minLeadingWidth : 10,
            subtitle: Text('IPA',
                style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                ),
            ),
          ),
          ListTile(
           contentPadding: EdgeInsets.only(left: 54.0),
           leading: Icon(Icons.radio_button_checked_outlined, color: Colors.grey[500]),
            title: Text('Universitas Esa unggul'),
            minLeadingWidth : 10,
            subtitle: Text('Teknik Informatika',
                style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                ),
            ),
          ),
           SizedBox(height: 10.0),
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(Icons.image_outlined),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'My Activity',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
             ],
             
          ),
       Container(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  initialPage: 0,
                  autoPlay: true,
                  reverse: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  onPageChanged: (index, reason) => _currentIndex = index,
                  // pauseAutoPlayOnTouch: Duration(seconds: 10),
                  // scrollDirection: Axis.horizontal,
                ),
                items: imageList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          //shadowColor: Colors.grey,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              item,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ])
      ),
      
     ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          LoginScreen();
        },
        child: Icon(Icons.logout_rounded),
        backgroundColor: Color.fromARGB(255, 2, 13, 112),
      ),
     );
  }
}
