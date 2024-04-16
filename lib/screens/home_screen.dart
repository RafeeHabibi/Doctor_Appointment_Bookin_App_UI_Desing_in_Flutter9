import 'package:doctor_appointment/screens/doctor_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:doctor_appointment/screens/colors.dart';

class HomeScreen extends StatelessWidget {
  // Define category names and corresponding icons
  final List<String> catName = ['Dental', 'Eye', 'Heart', 'Brain', 'Ear'];
  final List<Icon> catIcon = [
    Icon(MdiIcons.toothOutline, color: kpColor, size: 30),
    Icon(MdiIcons.eye, color: kpColor, size: 30),
    Icon(MdiIcons.heartPlus, color: kpColor, size: 30),
    Icon(MdiIcons.brain, color: kpColor, size: 30),
    Icon(MdiIcons.earHearing, color: kpColor, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4EE),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background gradient container
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kpColor.withOpacity(0.7), kpColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: kwColor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hi Programmers',
                          style: TextStyle(
                            color: kwColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Your Health is Over\nFirst Priority.',
                          style: TextStyle(
                            color: kwColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kwColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: ksdColor,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here...',
                              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                              prefixIcon: Icon(Icons.search, size: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: kbColor.withOpacity(0.6),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catName.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: ksdColor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(child: catIcon[index],),
                            ),
                            SizedBox(
                                height: 5
                            ,),
                            Text(
                              catName[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kbColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                      height: 5
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Recommended Doctor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: kbColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  DoctorSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
