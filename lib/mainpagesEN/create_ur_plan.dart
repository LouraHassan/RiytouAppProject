import 'package:flutter/material.dart';
import 'package:testapp1/mainpagesEN/activitieslist.dart';
import 'package:testapp1/mainpagesEN/restaurantlist.dart';
import 'package:testapp1/widgets/list_item.dart';

class CreateYourPlan extends StatelessWidget {
  CreateYourPlan({super.key});
  final List _activity = [
    'Breakfast',
    'First Activity',
    'Lunch',
    'Second Activity',
    'Dinner'
  ];
  final List _place = [
    'Choose',
    'Choose',
    'Choose',
    'Choose',
    'Choose',
  ];
  final List _page = [
    const RestaurantList(),
    const ActivitiesList(),
    const RestaurantList(),
    const ActivitiesList(),
    const RestaurantList()
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
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _activity.length,
          itemBuilder: (context, index) {
            return SchedulePage(
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
          "Save Plan",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
