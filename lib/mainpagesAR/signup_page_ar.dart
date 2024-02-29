import 'package:flutter/material.dart';
import 'package:testapp1/mainpagesAR/login_page_ar.dart';
import 'package:testapp1/mainpagesAR/page1_ar.dart';

import '../widgets/form_container_widget.dart';

class SignUpPageAR extends StatefulWidget {
  const SignUpPageAR({super.key});

  @override
  State<SignUpPageAR> createState() => _SignUpPageARState();
}

class _SignUpPageARState extends State<SignUpPageAR> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "تسجيل",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(40, 87, 69, 1),
                fontWeight: FontWeight.w500),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1AR()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Color.fromRGBO(40, 87, 69, 1),
              ),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Image.asset(
                    'images/gplogo.jpg',
                    height: 200,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FormContainerWidget(
                    controller: _usernameController,
                    hintText: "اسم المستخدم",
                    icon: const Icon(Icons.person),
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FormContainerWidget(
                    controller: _emailController,
                    hintText: "البريد الإلكتروني",
                    icon: const Icon(Icons.mail),
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FormContainerWidget(
                    controller: _passwordController,
                    hintText: "كلمة المرور",
                    icon: const Icon(Icons.lock),
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FormContainerWidget(
                    hintText: "تأكيد كلمة المرور",
                    icon: Icon(Icons.lock),
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 198, 81, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 8)
                          ]),
                      child: const Center(
                          child: Text(
                        'تسجيل',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPageAR()));
                        },
                        child: const Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(40, 87, 69, 1),
                          ),
                        ),
                      ),
                      const Text(
                        "لديك حساب من قبل؟ ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
