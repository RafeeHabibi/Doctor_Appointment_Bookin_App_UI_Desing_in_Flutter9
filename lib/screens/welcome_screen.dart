import 'package:doctor_appointment/screens/colors.dart';
import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';


class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width : MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kpColor.withOpacity(0.7),
              kpColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('assets/images/doctors.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Doctor Online',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            Text(
              'Appoint Your Doctor!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,

              ),
            ),
            SizedBox(
              height: 60,
            ),
            Material(
              color: kwColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text('Lets Go',
                  style: TextStyle(
                    color: kpColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/lined-heart.png',
              color: kwColor,
              scale: 3,
            ),
          ],
        ),
      ),
    );
  }
}
