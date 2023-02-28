import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pedrodap/screens/createsessions/create%20training%20session.dart';
import 'package:sizer/sizer.dart';

import '../../Widget/Drawer.dart';
import '../profile/Chatpage.dart';

class ViewMyMedical extends StatefulWidget {
  const ViewMyMedical({Key? key}) : super(key: key);

  @override
  State<ViewMyMedical> createState() => _ViewMyMedicalState();
}

class Sachen {
  String? image;
  String? name;

  Sachen(this.image, this.name);
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ViewMyMedicalState extends State<ViewMyMedical> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: drawer(),
      backgroundColor: Color(0xff131313),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  // SizedBox(width: 25.w,),
                  Text(
                    "View Medical",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15.0)),
                height: 13.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/medical.jpg'),
                      radius: 5.5.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50.w,
                          child: Text(
                            'Medician',
                            style: TextStyle(
                              fontSize: 5.w,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Text(
                          'medician@gmail.com',
                          style: TextStyle(
                            fontSize: 4.w,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.cyanAccent,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'No. : ',
                              style: TextStyle(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '+01-12345687',
                              style: TextStyle(
                                fontSize: 4.w,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                padding: EdgeInsets.all(3.w),
                height: 15.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border: Border.all(color: Colors.white.withOpacity(0.15)),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Training Details :',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 11.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          '1. Medicine ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          '4. Manage Health ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '2. Give Advice ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          width: 9.5.w,
                        ),
                        Text(
                          '5. Give Instructions',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '3. Keep Player Healthy',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 14.h,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.calendar_month_rounded,
                        color: Colors.white, size: 35.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "05-04-23",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Day",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Thursday",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17.h,
                    width: 40.w,
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Session Period",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "10:00 Am",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                        Text(
                          "To",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp),
                        ),
                        Text(
                          "10:45 Am",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 17.h,
                    width: 40.w,
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fees",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "30 \$",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                        Text(
                          "Per",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp),
                        ),
                        Text(
                          "30 Mins",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  TextStyle textStyle =
      TextStyle(color: Colors.white, fontSize: 12.sp, fontFamily: "Poppins");

  InputDecoration inputDecoration(
      {required String hintText, required Color col, required Icon icon}) {
    return InputDecoration(
      fillColor: col,
      hoverColor: Colors.white,
      focusColor: Colors.white,
      filled: true,
      errorStyle: const TextStyle(
        color: Colors.red,
      ),
      hintText: hintText,
      prefixIcon: icon,
      contentPadding: EdgeInsets.symmetric(vertical: 5.0),
      prefixIconColor: Colors.purple,
      hintStyle: textStyle,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.sp)),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.sp)),
          borderSide: BorderSide.none),
    );
  }
}
