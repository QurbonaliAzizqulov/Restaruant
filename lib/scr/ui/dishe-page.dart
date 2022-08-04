import 'package:beginner/models/main_provider.dart';
import 'package:beginner/models/mealser.dart';

import 'package:beginner/scr/widgets/Product_item.dart';
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
    return Consumer<Mainprovider>(
      builder: (context, data, child) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return buildCustomScrollView(
                  constraints); //buildSliver(constraints);
            },
          ),
        );
      },
    );
  }

  CustomScrollView buildCustomScrollView(BoxConstraints constraints) {
    var axiscount = 1;
    var current = constraints.maxWidth;
    if (current <= 555) {
      axiscount = 1;
    } else if (current > 555 && current <= 840) {
      axiscount = 2;
    } else if (current > 840 && current <= 1120) {
      axiscount = 3;
    } else {
      axiscount = 4;
    }
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          shadowColor: Colors.transparent,
          floating: true,
          backgroundColor: Colors.yellow,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: SizedBox(
                child: Text(
              """title""".tr(),
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold),
            )),
          ),
          toolbarHeight: 50,
        ),
        const SliverAppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25,
                ),
                child:FutureBuilder(
                    future: getFavoritelistindex(),
                    builder: (context,AsyncSnapshot<List<int>> snapshot){
                      if(snapshot.hasData){
                        if(snapshot.data!.contains(index)){
                          return  Productitem(getMeals()[index], index,isFavorite: true,);
                        }else{
                          return  Productitem(getMeals()[index], index,isFavorite: false,);
                        }
                      }return CircularProgressIndicator();

                },  )




              );
            },
            childCount: getMeals().length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 60,
            crossAxisCount: axiscount,
            mainAxisExtent: 382,
          ),
        ),
      ],
    );
    // SliverGrid.builder(
    //     padding: EdgeInsets.only(top: 60),
    //     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
    //       mainAxisSpacing: 30,
    //       crossAxisCount: axiscount, mainAxisExtent: 380,) ,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(
    //           left: 25.0, right: 25, ),
    //         child: Productitem(meal:getMeals()[index],index: index),
    //       );
    //     },
    //   itemCount: getMeals().length,)
  }

  List<Meal> getMeals() {
    switch (context.locale.toString()) {
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
      default:
        return Meal.mealRu;
    }
  }
  Future<List<int>> getFavoritelistindex(){
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);
      return mainprovider.getSFavoriteList();

  }
}
