import 'package:beginner/models/mealser.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/main_provider.dart';
import '../widgets/Product_item.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  @override
  Widget build(BuildContext context) {
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


    final mainprovider = Provider.of<Mainprovider>(context, listen: false);

    return
      Consumer<Mainprovider>(
          builder: (context, data, child) {
      return

      SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Favtext".tr()),
            bottom: TabBar(
              indicatorColor: Colors.red,
              tabs: <Widget>[
                Tab(
                  text: "dishes",
                ),
                Tab(
                  text: "salads",
                ),
                Tab(
                  text: "drinks",

                ),
                Tab(
                  text: "fast food",

                ),
              ],
            ),
          ),
          body: TabBarView(
             children: [
               FutureBuilder(
                   future: mainprovider.getSFavoriteList(),
                   builder: (context, AsyncSnapshot  snapshot) {
                     if (!snapshot.hasData) {
                       return Center(
                         child: CircularProgressIndicator(),
                       );
                     } else {
                       print('${snapshot.data}');
                       return CustomScrollView(
                         scrollDirection: Axis.vertical,
                         slivers: [
                           SliverAppBar(
                             backgroundColor: Colors.transparent,),
                           SliverGrid(
                             delegate: SliverChildBuilderDelegate(
                                   (context, index) {
                                 return Padding(
                                   padding: const EdgeInsets.only(
                                     left: 25.0,
                                     right: 25,
                                   ),
                                   child: Dismissible(
                                     key: UniqueKey(),
                                     resizeDuration: Duration(seconds: 2),

                                     direction: DismissDirection.horizontal,
                                     background: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                       Icon(Icons.delete,color: Colors.red,),
                                       Icon(Icons.delete,color: Colors.red,)
                                     ],),
                                     child: Productitem(
                                         getMeals()[snapshot.data[index]],snapshot.data[index]),
                                   ),

                                 );
                               },
                               childCount: snapshot.data.length,
                             ),
                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               mainAxisSpacing: 60,
                               crossAxisCount: 1,
                               mainAxisExtent: 380,
                             ),
                           ),
                         ],
                       ); }
                   }),
               Center(child: Text("Salatlar hali tanlanmagan"),),
               Center(child: Text("ichimliklar hali tanlanmagan"),),
               Center(child: Text("fast food hali tanlanmagan"),),

             ],

                    //     GridView.builder(
                    //         padding: EdgeInsets.only(top: 60),
                    //         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    //           mainAxisSpacing: 60,
                    //           crossAxisCount: 1, mainAxisExtent: 380,) ,
                    //         itemBuilder: (context, index) {
                    //           return Padding(
                    //             padding: const EdgeInsets.only(
                    //               left: 25.0, right: 25, ),
                    //             child: Column(
                    //               children: [
                    //                 Productitem(Meal.mealUz[snapshot.data[index]],snapshot.data[index]),
                    //               ],
                    //             ),
                    //           );
                    //         },
                    //       itemCount: snapshot.data.length,);


          ),
        ),
      ),
    );});

  }


}
