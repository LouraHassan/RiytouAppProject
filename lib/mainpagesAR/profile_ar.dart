import 'package:flutter/material.dart';

import '../landingpage.dart';

class ProfilePageAR extends StatefulWidget {
  const ProfilePageAR({super.key});

  @override
  State<ProfilePageAR> createState() => _ProfilePageARState();
}

class _ProfilePageARState extends State<ProfilePageAR> {
  String firstName = "";
  String lastName = "";
  String bloodType = "";
  String height = "";
  String weight = "";
  String dateOfBirth = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
          title: const Text('صفحة الحساب',
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()));
                },
                child: const Icon(
                  Icons.exit_to_app_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'الاسم الأول',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      firstName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'الاسم الأخير',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      lastName = value;
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'المعلومات الطبية',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'فصيلة الدم',
                    prefixIcon: Icon(Icons.opacity, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      bloodType = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'الطول',
                    prefixIcon: Icon(Icons.height, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'الوزن',
                    prefixIcon: Icon(Icons.fitness_center, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'تاريخ الميلاد',
                    prefixIcon: Icon(Icons.cake, color: Colors.grey),
                  ),
                  onChanged: (value) {
                    setState(() {
                      dateOfBirth = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 198, 81, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 8)
                        ]),
                    child: const Center(
                        child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
