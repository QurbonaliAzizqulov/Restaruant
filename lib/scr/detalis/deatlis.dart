import 'package:beginner/models/main_provider.dart';
import 'package:beginner/models/mealser.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detalispage extends StatefulWidget {
  final detalisindex;

  Detalispage({this.detalisindex, Key? key}) : super(key: key);

  @override
  State<Detalispage> createState() => _DetalispageState();
}

class _DetalispageState extends State<Detalispage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Mainprovider>(
      builder: (context, data, child) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Material(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xff3875A3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      icon: Icon(Icons.arrow_back)),
                  Expanded(
                      child: mybodystack(
                    context,
                  )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Container mybodystack(context) {
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);
    return Container(
      margin: EdgeInsets.only(top: 30, right: 40),
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getMeals()[widget.detalisindex].namedetal.toString(),
                    style: TextStyle(color: Color(0xff1153FC), fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Text(
                        "${getMeals()[widget.detalisindex].name}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/Group1.png"),
                          Text("  ${getMeals()[widget.detalisindex].time}"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Group.png"),
                          Text(" ${getMeals()[widget.detalisindex].inCount}"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Vector.png",
                            width: 15,
                          ),
                          Text(" ${getMeals()[widget.detalisindex].kalori}"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("""${getMeals()[widget.detalisindex].text}"""),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ingredients".tr(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 200,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 10,
                      spacing: 10,
                      direction: Axis.horizontal,
                      children: List.generate(
                        5,
                        (index) => Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 60,
                          child: Image.asset("assets/images/tomoto.png"),

                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -70,
            right: -30,
            child: Card(
              elevation: 30,
              color: Colors.transparent,
              child: GestureDetector(
                child: Hero(
                  tag: "Rasm",
                  child: Image.asset(
                    getMeals()[widget.detalisindex].imagUrl!,
                    width: 180,
                    height: 180,
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return WillPopScope(
                        onWillPop: () async => false,
                        child: alertDialog(context),
                      );
                    },
                  );
                  // showDialog(context: context,
                  //     builder: (context){
                  //   return buildAlertDialog();}),
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  AlertDialog alertDialog(BuildContext context) {
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);
   return
     AlertDialog(
            actionsOverflowButtonSpacing: 10,
            alignment: Alignment.center,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text(getMeals()[widget.detalisindex].name!),
                  SizedBox(
                    height: 12,
                  ),
                  Text(getMeals()[widget.detalisindex].coast!),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Image.asset(getMeals()[widget.detalisindex].imagUrl!,),
                        Positioned(
                          bottom: 0,
                          left: 11,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      context.read<Mainprovider>().ayir();
                                    },
                                    icon: Text("-")),
                                Text("${context.watch<Mainprovider>().counter}"),
                                IconButton(
                                    onPressed: () {
                                      context.read<Mainprovider>().qush();
                                    },
                                    icon: Text("+")),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Group1.png",
                          ),
                          Text(
                              getMeals()[widget.detalisindex].time!,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Group.png"),
                          Text(getMeals()[widget.detalisindex].inCount!,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 20,
                          ),
                          Text(
                            "Добавить в меню",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.white,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Ok", style: TextStyle(color: Colors.green)),
                )
              ],
            ),
          );

  }

// buildAlertDialog() =>
//     WillPopScope(
//       onWillPop: ()async=>false,
//       child: AlertDialog(
//         alignment: Alignment.center,
//         title: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//           child: Column(
//             children: [
//               Text("Кавказский шашлык     из бараньих     ребрышек"),
//               SizedBox(
//                 height: 12,
//               ),
//               Text("490 000 сум"),
//               SizedBox(
//                 height: 12,
//               ),
//               Container(
//                 height: 200,
//                 child: Stack(
//                   children: [
//                     Image.asset("assets/images/meal1.png"),
//                     Positioned(
//                       bottom: 0,
//                       left: 11,
//                       child: Container(
//                         height: 40,
//                         width: 150,
//                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
//                           color: Colors.blue,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(onPressed: (){
//                               setState(() {
//                                 ayir();
//                               });;
//                             }, icon: Text("-")),
//                             Text("$son"),
//                             IconButton(onPressed: (){
//                               qush();
//                             }, icon: Text("+")),
//                           ],
//                         ),
//                       ),)
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 12,
//               ),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children:
//                 [
//                   Row(children: [
//                     Image.asset("assets/images/Group1.png",),
//                     Text("20 мин",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300
//                     ),),
//                   ],),
//                   Row(children: [
//                     Image.asset("assets/images/Group.png"),
//                     Text("5 инг",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300)
//                     )],)
//                 ],),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(20)
//                 ),
//                 child: ElevatedButton(
//                   onPressed: (){
//                     showDialog(context: context, builder: (context){
//                       return AlertDialog(
//                         title:Text("rahmat"),
//                       );
//                     });
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.shopping_cart,size: 20,),
//                       Text("Добавить в меню",style: TextStyle(fontSize: 16),)
//
//                     ],
//                   ),
//                 ),
//               )
//
//
//             ],
//           ),
//         ),
//         backgroundColor: Colors.white,
//         content: Row(
//           mainAxisAlignment:MainAxisAlignment.spaceBetween,
//           children: [
//             TextButton(
//               onPressed: (){
//                 Navigator.pop(context);
//               }, child: Text("Cancel",style: TextStyle(color: Colors.red),),),
//             TextButton(
//               onPressed: (){
//
//               }, child: Text("Ok",style: TextStyle(color: Colors.green)),)
//           ],),
//       ),

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
}
