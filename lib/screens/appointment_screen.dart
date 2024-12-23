import 'package:doctor_application/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({super.key, required this.p});
  int p;
  List Doctors = [
    "Dr. Emily Harper",
    "Dr. Sophia Mart",
    "Dr. James White",
    "Dr. Michael Jack"
  ];

  List imgs = [
    "assets/doctor1.jpg",
    "assets/doctor2.jpg",
    "assets/doctor3.jpg",
    "assets/doctor4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => MainScreen()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 25,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      imgs[p],
                      height: 180,
                      width: 180,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    Doctors[p],
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 23),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Surgeon",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 4)
                            ]),
                        child: Icon(
                          Icons.call,
                          color: Colors.redAccent,
                          size: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 4)
                            ]),
                        child: Icon(
                          CupertinoIcons.videocam_fill,
                          color: Colors.redAccent,
                          size: 25,
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 4)
                            ]),
                        child: Icon(
                          CupertinoIcons.chat_bubble_text_fill,
                          color: Colors.redAccent,
                          size: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Booking Date",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 8),
                              decoration: BoxDecoration(
                                  color:
                                      i == 1 ? Colors.redAccent : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${i + 8}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: i == 1
                                            ? Colors.white
                                            : Colors.black.withOpacity(0.6)),
                                  ),
                                  Text(
                                    "Dec",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: i == 1
                                            ? Colors.white
                                            : Colors.black.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Booking Time",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color:
                                      i == 2 ? Colors.redAccent : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Center(
                                child: Text(
                                  "${i + 5}: 00 PM",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: i == 2
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 90,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2)
        ]),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "Book Now",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
