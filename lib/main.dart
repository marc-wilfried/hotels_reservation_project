import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

const dGreen = Color(0xFF54D3C2);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[800],
              size: 20,
              ),
            ),
          title: Text(
            'Explore',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 22,
              color: Colors.black,
            ),
            ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color: Colors.grey[800], size: 20)),
            IconButton(onPressed: (){}, icon: Icon(Icons.place, color: Colors.grey[800], size: 20)),

          ],
        ) ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchSection(),
              SizedBox(height: 5,),
              ViewHotelsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.only(top : 20, left: 10, right: 10, bottom: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'London',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: dGreen,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.search), color: Colors.white,),
                ),
              ],
            ),
            SizedBox(height: 7,),
            Padding(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: Row(
                children: [
                  Text(
                    'Choose date',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox( width: 110,),
                  Text(
                    'Number of Rooms',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),

                ],
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 7, right: 7),
                child: Row(
                  children: [
                    Text(
                      '12 DEC - 22 DEC',
                      style: GoogleFonts.nunito(
                      fontSize: 13,
                      ),
                    ),
                    SizedBox( width: 85,),
                    Text(
                      '1 Room - 2 Adults',
                      style: GoogleFonts.nunito(
                      fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

var listHotels = [

    {
      'title': 'Grand Royl Hotel',
      'place': 'wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel_1.png',
      'price': '180',

    },
    {
      'title': 'Queen Hotel',
      'place': 'wembley, London',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel_2.png',
      'price': '220',
    },
    {
      'title': 'Grand Mal Hotel',
      'place': 'wembley, London',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel_3.png',
      'price': '400',
    },
    {
      'title': 'Hilton',
      'place': 'wembley, London',
      'distance': 11,
      'review': 34,
      'picture': 'images/hotel_4.png',
      'price': '910',
    }

  ];

class ViewHotelsSection extends StatefulWidget {
  const ViewHotelsSection({super.key});

  

  @override
  State<ViewHotelsSection> createState() => _ViewHotelsSectionState();
}

class _ViewHotelsSectionState extends State<ViewHotelsSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17, right: 17),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '550 hotels founds',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(
                'Filters',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.filter_list_outlined,
                  color: dGreen,
                  size: 20 ,
                  ),
                ),
            ],
          ),
          Column(
            children: [
              Card(
                color: Colors.black,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),

              ),
            ],
          ),
        ],
      ),
      );
  }
}

