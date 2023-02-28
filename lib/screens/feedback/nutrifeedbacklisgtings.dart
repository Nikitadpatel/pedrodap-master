import 'package:flutter/material.dart';
import 'package:pedrodap/screens/feedback/viewnutrifeedback.dart';
import 'package:pedrodap/screens/profile/viewfeedBack.dart';
import 'package:sizer/sizer.dart';

import '../../Widget/Drawer.dart';

class NutriFeedbackListings extends StatefulWidget {
  const NutriFeedbackListings({Key? key}) : super(key: key);

  @override
  State<NutriFeedbackListings> createState() => _NutriFeedbackListingsState();
}

class Sachen {
  String? image;
  String? name;
  String? stars;

  Sachen(this.image, this.name,this.stars);
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
List<Sachen> profile = [
  Sachen("Dietitians", "Lionel Messi",'5 ☆'),
  Sachen("Diet Plans", "Cr 7",'5 ☆'),
  Sachen("Eating Habits", "Suarez",'4 ☆'),
  Sachen("Manage Diseas", "Lewandoski",'2 ☆'),
  Sachen("Healths", "Lionel Messi",'5 ☆'),

];


class _NutriFeedbackListingsState extends State<NutriFeedbackListings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff131313),
        key: _scaffoldKey,
        drawer: drawer(),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
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
                      "Feedback Listing",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent Feedbacks",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),

                SizedBox(height: 80.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Container(
                          height: 10.h,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  Text(
                                    profile[index].name.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.sp),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        profile[index].image.toString(),
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp),
                                      ),
                                      SizedBox(width: 2.w,),
                                      Text(
                                        profile[index].stars.toString(),
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ViewNutriFeedback(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 25.w,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff0DF5E3),
                                      ),
                                      borderRadius: BorderRadius.circular(20.sp)),
                                  child: Text(
                                    "View",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: profile.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
