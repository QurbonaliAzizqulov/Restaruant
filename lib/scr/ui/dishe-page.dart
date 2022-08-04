import 'dart:io';

import 'package:beginner/models/lang_provider.dart';
import 'package:beginner/models/mealser.dart';
import 'package:beginner/scr/detalis/deatlis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dishespage extends StatefulWidget {
  Dishespage({Key? key}) : super(key: key);

  @override
  State<Dishespage> createState() => _DishespageState();
}

class _DishespageState extends State<Dishespage> {
  bool _isitemselekted = false;
  int selekted = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () {
      _isitemselekted
          ? setState(() {
              _isitemselekted = false;
            })
          : exit(0);
      return Future.value(false);
    }, child: Consumer<Langprovider>(
      builder: (context, data, child) {
        return Scaffold(
          body: _isitemselekted
              ? Detalispage(
                  detalisindex: selekted,
                )
              : LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return buildColumn(constraints);
                  },
                ),
        );
      },
    ));
  }

  Column buildColumn(BoxConstraints constraints) {
    int axiscoubt = 1;
    var current = constraints.maxWidth;
    if (current <= 500) {
      axiscoubt = 1;
    } else if (current > 500 && current <= 750) {
      axiscoubt = 2;
    } else if (current > 700 && current <= 1000) {
      axiscoubt = 3;
    } else {
      axiscoubt = 4;
    }

    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20),
          child: SizedBox(
            height: 50,
            child: Text("""title.""".tr()),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 400, crossAxisSpacing: 20),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25, top: 25, bottom: 15),
                child: meal(getMeals()[index], index),
              );
            },
            itemCount: getMeals().length,
          ),
        )
      ],
    );
  }

  List<Meal>getMeals(){
     switch(context.locale.toString()){
       case 'uz_UZ':
         {
          return Meal.mealUz;
        }
      case "ru_RU":
        {
          return Meal.mealRu;
        }
      case "en_US":
        {
          return Meal.mealUs;
        }
       default:return Meal.mealRu;
    }
  }


  Widget meal(Meal meal, index) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Card(
            elevation: 45,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.48,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: meal.banercolor),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Text(
                      "| ${meal.taype}",
                      style: const TextStyle(
                        color: Color(0xff00195C),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.122,
                      child: Text(meal.name!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Стоимость:"),
                        Text(meal.coast!),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Group1.png"),
                            Text("  ${meal.time}"),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/Group.png"),
                            Text(" ${meal.inCount}"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff175B8F)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.add)),
                        SizedBox(
                          height: 37,
                          width: 110,

                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    const Color(0xff175B8F)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  selekted = index;
                                  _isitemselekted = true;
                                });
                              },
                              child:  Text("More".tr())),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: -24,
            right: -20,
            child: Card(
                color: Colors.transparent,
                elevation: 30,
                child: Image.asset(meal.imagUrl!)))
      ],
    );
  }
}
