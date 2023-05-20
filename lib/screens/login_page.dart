// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:test_1/screens/profile_page.dart';

import 'package:test_1/utils/dimensions.dart';

import '../widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();

  LoginPage({super.key});
  //Place A
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFFBFBFB),
        // ignore: avoid_unnecessary_containers
        body: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: Dimensions.height80,
                width: Dimensions.width80,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/controller.png'),
                        fit: BoxFit.fill),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                height: Dimensions.height100,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: 'Acumin Pro',
                              color: Colors.black,
                              fontSize: Dimensions.height24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height16,
                    ),
                    SizedBox(
                      width: Dimensions.width350,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              size: Dimensions.height20,
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: Dimensions.height14,
                            )),
                        controller: _phoneController,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height16,
                    ),
                    SizedBox(
                      width: Dimensions.width350,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: Dimensions.height20,
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: Dimensions.height14,
                            )),
                        controller: _passController,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Acumin Pro',
                            fontSize: Dimensions.height14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFF8723),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height16,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => ProfilePage()),
                              (route) => false);
                        },
                        child: CustomButton(
                          text: 'Login',
                          onPressed: () {},
                          width: Dimensions.width350,
                          height: Dimensions.height50,
                        )),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Container(
                      width: Dimensions.width350,
                      height: Dimensions.height50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(Dimensions.height30)),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF0054BE),
                              Color(0XFF0A7AC3),
                            ],
                          )),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Login with OTP",
                          style: TextStyle(
                            fontFamily: 'Acumin Pro',
                            fontSize: Dimensions.height16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontFamily: 'Acumin Pro',
                            fontSize: Dimensions.height13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        Text(
                          'Sign up now',
                          style: TextStyle(
                            fontFamily: 'Acumin Pro',
                            fontSize: Dimensions.height13,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFFFF7A2A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
