import 'package:flutter/material.dart';
import 'package:testapp1/mainpagesEN/activitieslist.dart';
import 'package:testapp1/mainpagesEN/restaurantlist.dart';
import 'package:testapp1/widgets/list_item.dart';

class CreateYourPlanAR extends StatelessWidget {
  CreateYourPlanAR({super.key});
  final List _activity = [
    'الفطور',
    'الفعالية الأولى',
    'الغداء',
    'الفعالية الثانية',
    'العشاء'
  ];
  final List _place = [
    'اختر',
    'اختر',
    'اختر',
    'اختر',
    'اختر',
  ];
  final List _page = [
    const RestaurantListAR(),
    const ActivitiesListAR(),
    const RestaurantListAR(),
    const ActivitiesListAR(),
    const RestaurantListAR()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Day 1",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePageAR(
              activity: _activity[index],
              page: _page[index],
              place: _place[index],
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        label: const Text(
          "حفظ الخطة",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
