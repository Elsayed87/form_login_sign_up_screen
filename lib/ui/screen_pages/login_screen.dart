import 'package:easy_localization/easy_localization.dart';
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
            "arrowback".tr().toString(),
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
                ReuseTextFormField(
                  labelText: "firstName".tr().toString(),
                  validatorMassage: "validatorMassage".tr(),
                  keyboardtype: TextInputType.name,
                ),
                SizedBox(
                  height: 20.h,
                ),
                ReuseTextFormField(
                    labelText: "LName".tr().toString(),
                    validatorMassage: "validatorMassage2".tr(),
                    keyboardtype: TextInputType.name),
                SizedBox(
                  height: 20.h,
                ),
                ReuseTextFormField(
                    labelText: "Pno".tr().toString(),
                    validatorMassage:"validatorMassage3".tr(),
                    keyboardtype: TextInputType.number),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonDecorated(
                    formKey: _formKey,
                    buttonLabelText: "signB".tr().toString(),
                    textMessageAfterValidate:
                        'You have been successfully registered',
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "checkAccount".tr(),
                    style: kTextStartBeforeSpan,
                    children: <InlineSpan>[
                      TextSpan(
                        text: "checksign".tr().toString(),
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
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          context.setLocale(const Locale('ar'));
                        },
                        child: const Text('العربيه')),
                    TextButton(
                        onPressed: () {
                          context.setLocale(const Locale('en'));
                        },
                        child: const Text('English')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
