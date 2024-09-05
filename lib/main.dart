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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
                selectedItemColor: Colors.grey[600],
                items: [
                    BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: dGreen, 
                    ),
                    label: 'Explore'
                  ),
                    BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: dGreen,
                    ),
                    label: 'Tips', // Ajout du label
                  ),
                    BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: dGreen,
                    ),
                    label: 'Profile', // Ajout du label
                  ),
                ],
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

final List listHotels = [

    {
      'title': 'Grand Royl Hotel',
      'place': 'wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'assets/hotel_1.png',
      'price': '180',

    },
    {
      'title': 'Queen Hotel',
      'place': 'wembley, London',
      'distance': 3,
      'review': 13,
      'picture': 'assets/hotel_2.png',
      'price': '220',
    },
    {
      'title': 'Grand Mal Hotel',
      'place': 'wembley, London',
      'distance': 6,
      'review': 88,
      'picture': 'assets/hotel_3.png',
      'price': '400',
    },
    {
      'title': 'Hilton',
      'place': 'wembley, London',
      'distance': 11,
      'review': 34,
      'picture': 'assets/hotel_4.png',
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
            children: listHotels.map((hotel) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              hotel['picture'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                hotel['title'],
                                style: GoogleFonts.nunito(
                                  fontSize : 17,
                                  fontWeight : FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$${hotel['price']}",
                                style: GoogleFonts.nunito(
                                  fontSize : 17,
                                  fontWeight : FontWeight.bold,
                                ),
                              ),
                            ]
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                hotel['place'],
                                style: GoogleFonts.nunito(
                                  fontSize : 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    size: 10,
                                    color: dGreen,
                                  ),
                                  Text(
                                  '${hotel['distance']}km to city',
                                  style: GoogleFonts.nunito(
                                    fontSize : 12,
                                    color: Colors.grey,
                                  ),
                              ),
                                ],
                              ),
                              Text(
                                "/per night",
                                style: GoogleFonts.nunito(
                                  fontSize : 12,
                                  fontWeight : FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                color: dGreen,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star_rate,
                                color: dGreen,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star_rate,
                                color: dGreen,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star_rate,
                                color: dGreen,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star_border,
                                color: dGreen,
                                size: 14.0,
                              ),
                              SizedBox(width: 15,),
                              Text(
                                '${hotel['review']} reviews',
                                style: GoogleFonts.nunito(
                                  fontSize : 12,
                                  color: Colors.grey,
                                ),
                              ),
                          ],
                          ),
                        ],
                        ),
                      ),
                    ],
                  ), 
                );
            }).toList(),
          ),
        ],
      ),
      );
  }
}

