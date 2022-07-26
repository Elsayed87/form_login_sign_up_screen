import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Text(
              'Skip',
              style: kTextBackIconTextStyle,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Welcome Shabeer',
                style: kTextwelcomeStyle,
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                'images/login.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text('you\'re all set', style: kTextwelcomeStyle2),
              SizedBox(
                height: 20.h,
              ),
              Text('Take a minute to upload a profile photo',
                  style: kTextwelcomeStyle3),
            ],
          ),
        ),
      ),
    );
  }
}
