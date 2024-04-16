import 'package:doctor_appointment/screens/appointment_section.dart';
import 'package:doctor_appointment/screens/colors.dart';
import 'package:flutter/material.dart';

class DoctorSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context,index){
          return Column(
            children: [
              Container(
                height: 300,
                width : 200,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFF2F8FF),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: ksdColor,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => AppointmentSection(),
                              ),);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            child: Image.asset(
                              'assets/images/doctor${index + 1}.jpg',
                              height: 200,
                              width : 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 45,
                            width : 45,
                            margin: EdgeInsets.all(8.0),
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
                            child: Center(
                              child: Icon(Icons.favorite_outline, color: kpColor, size: 28),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Text('Dr Looney',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: kpColor,
                          ),),
                          Text('Surgeon',
                          style: TextStyle(
                            fontSize: 18,
                            color: kbColor.withOpacity(0.6),
                          ),),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 2),
                              Text('4.9',
                              style: TextStyle(
                                fontSize: 16,
                                color: kbColor.withOpacity(0.5),
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
