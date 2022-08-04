import 'package:beginner/models/mealser.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Detalispage extends StatelessWidget {
  final detalisindex;

  Detalispage({Key? key, this.detalisindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xff3875A3),
      child: mybodystack(context),
    );
  }

  Container mybodystack(context) {
    return Container(
      margin: EdgeInsets.only(top: 80, right: 40),
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
                    "| namedetal".tr(),
                    style: TextStyle(color: Color(0xff1153FC), fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                      child: Text(
                        "Кавказский шашлык из бараньих ребрышек",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          Text("  ${Meal.mealRu[detalisindex].time}"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Group.png"),
                          Text(" ${Meal.mealRu[detalisindex].inCount}"),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Vector.png",
                            width: 15,
                          ),
                          Text(" ${Meal.mealRu[detalisindex].kalori}"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      """Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.

Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи"""),
                  SizedBox(height: 20,),
                  Text("Ингредиенты (5)",style: TextStyle(fontWeight: FontWeight.bold),)
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
                  child: Image.asset(Meal.mealRu[detalisindex].imagUrl!)),)
        ],
      ),
    );
  }
}
