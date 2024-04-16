import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'colors.dart'; // Assuming colors are imported correctly

class AppointmentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9E4EE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/doctor1.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      kpColor.withOpacity(0.9),
                      kpColor.withOpacity(0),
                      kpColor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2F8FF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: ksdColor,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: kpColor,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F8FF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: ksdColor,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_outline,
                          color: kpColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr Looney',
                    style: TextStyle(
                      color: kpColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.heartPlus,
                        color: Colors.red,
                        size: 28,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Surgeon',
                        style: TextStyle(
                          fontSize: 17,
                          color: kpColor.withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Dr. Looney is an esteemed surgeon known for their exceptional skills and expertise in surgical procedures.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Book Date',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kbColor.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                            color: index == 1 ? kpColor : Color(0xFFF2F8FF),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: ksdColor,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${index + 8}',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: index == 1 ? kwColor : kbColor.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                'DEC',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: index == 1 ? kwColor : kbColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('Book Time',
                  style: TextStyle(
                    fontSize: 18,
                    color: kbColor.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(height: 5),
                  Container(
                    height: 50,
                    child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)
                    {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: index == 2 ? kpColor : Color(0xFFF2F8FFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius  : 4,
                              spreadRadius: 2,
                              color: ksdColor,
                            )
                          ]
                        ),
                        child: Center(
                          child: Text('${index + 8}: 00 AM',
                          style: TextStyle(
                            fontSize: 18,
                            color: index == 2 ? kwColor : kbColor.withOpacity(0.6),
                          ),),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 5),
                  Material(
                    color: kpColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text('Book Appointment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kwColor,
                          ),),
                        ),
                      ),
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
