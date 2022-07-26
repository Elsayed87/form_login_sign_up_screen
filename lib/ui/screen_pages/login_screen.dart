import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_login_sign_up_screen/ui/screen_pages/welcome_screen.dart';

import '../../const/constants.dart';
import '../widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Text(
            'Back',
            style: kTextBackIconTextStyle,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset('images/sign_in.jpg'),
                const ReuseTextFormField(
                  labelText: 'First Name',
                  validatorMassage: 'Enter your first name please!',
                  keyboardtype: TextInputType.name,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const ReuseTextFormField(
                    labelText: 'Last Name',
                    validatorMassage: 'Enter your Last name please!',
                    keyboardtype: TextInputType.name),
                SizedBox(
                  height: 20.h,
                ),
                const ReuseTextFormField(
                    labelText: 'Phone number',
                    validatorMassage: 'Enter your phone number please!',
                    keyboardtype: TextInputType.number),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonDecorated(
                    formKey: _formKey,
                    buttonLabelText: 'Sign Up',
                    textMessageAfterValidate:
                        'You have been successfully registered',
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account ? ',
                    style: kTextStartBeforeSpan,
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Sign in',
                        style: kTextSpanStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const WelcomeScreen(),
                              ),
                            );
                          },
                      )
                    ],
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
