import 'package:doctor_application/screens/doctors_screen.dart';
import 'package:doctor_application/widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class HomeScreen extends StatelessWidget {
  List catsname = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];

  List CatIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: Colors.redAccent,
      size: 30,
    )
  ];

  List imgs = [
    "assets/doctor1.jpg",
    "assets/doctor2.jpg",
    "assets/doctor3.jpg",
    "assets/doctor4.jpg",
  ];

  List Doctors = [
    "Dr. Emily Harper",
    "Dr. Sophia Mart",
    "Dr. James White",
    "Dr. Michael Jack"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/doctor1.jpg",
                            width: 60,
                            height: 60,
                          ),
                        ),
                        SizedBox(width: 10),
                        Boldtext(text: "Hi, Youssef"),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F8FF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none_sharp,
                              color: Colors.redAccent,
                              size: 30,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, spreadRadius: 3, blurRadius: 6)
                    ]),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 19),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Symptoms",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 110,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catsname.length,
                    itemBuilder: (Context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Center(
                                child: CatIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              catsname[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Our Best Doctors",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 340,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: imgs.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => DoctorsScreen(
                                                    m: i,
                                                  )));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      child: Image.asset(
                                        imgs[i],
                                        height: 200,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 4,
                                                spreadRadius: 2)
                                          ]),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.redAccent,
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Doctors[i],
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Surgeon",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 16),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
