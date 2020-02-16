import 'package:flutter/material.dart';
import 'package:starter/ui/item_meals.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipe Apps'),
      ),
      body: Center(child: Text('Disini data nya')),
    );
  }

  Widget listMeal() {
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (BuildContext context, int index) {
//                var itemMeal = snapshot.data.meals[index];
        return InkWell(
          splashColor: Colors.lightBlue,
          child: itemMeals(
            "itemMeal.idMeal",
            "itemMeal.strMeal",
            "itemMeal.strMealThumb",
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(idMeal: "itemMeal.idMeal")));
          },
        );
      },
    );
  }
}
