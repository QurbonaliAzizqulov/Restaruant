import 'package:flutter/cupertino.dart';

class Meal {
  int ?id;
  String ?taype;
  String?name;
  String?coast;
  String?time;
  String ?inCount;
  String ?imagUrl;
  Color?banercolor;
  String?kalori;
  String ?namedetal;
  String?text;


  Meal({this.id, this.taype, this.name, this.coast, this.time, this.inCount,
  this.imagUrl,this.banercolor,this.kalori,this.namedetal,this.text});
  static List<Meal> mealRu=[
   Meal(
     banercolor: Color(0xffF2DFE1),
     id: 1,
     taype: "Кавказская",
     name: "Шашлык бараньих ребрышек",
     coast: "904 000 сум",
     time: "20 мин",
     inCount: "5 инг",
     imagUrl: "assets/images/shashlik1.png",
     kalori: "438 кал",
       namedetal:"Chinese rus",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor: Color(0xffDCC7B1),
     id: 2,
     taype: "Кавказская 2",
     name: "Шашлык бараньих",
     coast: "500 000 сум",
     time: "15 мин",
     inCount: "4 инг",
     imagUrl: "assets/images/shashlik2.png",
       kalori: "400 кал",
       namedetal:"Chinese rus2",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor: Color(0xffFFC5A8),
     id: 3,
     taype: "Кавказская",
     name: "Шашлык бараньих ребрышек 3",
     coast: "605 000 сум",
     time: "21 мин",
     inCount: "5 инг",
     imagUrl: "assets/images/meal3.png",
       kalori: "420 кал",
       namedetal:"Chinese rus3",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''

   ),
   Meal(
     banercolor: Color(0xff71C3A1),
     id: 4,
     taype: "Кавказская 4",
     name: "Шашлык бараньих ребрышек",
     coast: "678 000 сум",
     time: "19 мин",
     inCount: "6 инг",
     imagUrl: "assets/images/meal4.png",
       kalori: "440 кал",
       namedetal:"Chinese rus4",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor:Color(0xffA8B6FF) ,
     id: 5,
     taype: "Кавказская 5",
     name: "Шашлык бараньих ребрышек ",
     coast: "705 000 сум",
     time: "22 мин",
     inCount: "4.5 инг",
     imagUrl: "assets/images/meal5.png",
       kalori: "425 кал",
       namedetal:"Chinese rus5",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor:Color(0xffFFE7A8) ,
     id: 6,
     taype: "Кавказская 6",
     name: "Шашлык бараньих ребрышек 6",
     coast: "780 000 сум",
     time: "20 мин",
     inCount: "5 инг",
     imagUrl: "assets/images/meal6.png",
       kalori: "412 кал",
       namedetal:"Chinese rus6",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor: Color(0xffCEA8FF),
     id: 7,
     taype: "Кавказская 7",
     name: "Шашлык 7",
     coast: "810 000 сум",
     time: "23 мин",
     inCount: "7 инг",
     imagUrl: "assets/images/meal7.png",
       kalori: "421 кал",
       namedetal:"Chinese rus7",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor:Color(0xffA8FFB1) ,
     id: 8,
     taype: "Кавказская 8",
     name: "Шашлык бараньих ребрышек 8",
     coast: "904 000 сум",
     time: "20 мин",
     inCount: "5 инг",
     imagUrl: "assets/images/meal8.png",
       kalori: "410 кал",
       namedetal:"Chinese rus8",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
   Meal(
     banercolor: Color(0xffFFA8A8),
     id: 9,
     taype: "Кавказская 9",
     name: "Шашлык бараньих ребрышек 9",
     coast: "756 000 сум",
     time: "21 мин",
     inCount: "4 инг",
     imagUrl: "assets/images/meal9.png",
       kalori: "405 кал",
       namedetal:"Chinese rus9",
       text:'''Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.
Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '''
   ),
  ];
  static List<Meal> mealUz=[
  Meal(
  banercolor: Color(0xffF2DFE1),
  id: 1,
  taype: "kavkaz",
  name: "Barbekyu qo'zichoq qovurg'alari",
  coast: "904 000 so'm",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/shashlik1.png",
  kalori: "438 кал",
      namedetal:"Chinese Uzb",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor: Color(0xffDCC7B1),
  id: 2,
  taype: "kavkaz 2",
  name: "qo'y go'shti shashlik",
  coast: "500 000 so'm",
  time: "15 min",
  inCount: "4 ing",
  imagUrl: "assets/images/shashlik2.png",
  kalori: "400 кал",
      namedetal:"Chinese Uzb2",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""

  ),
  Meal(
  banercolor: Color(0xffFFC5A8),
  id: 3,
  taype: "kavkaz",
  name: "shashlik 3",
  coast: "605 000 so'm",
  time: "21 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal3.png",
  kalori: "420 кал",
      namedetal:"Chinese Uzb3",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor: Color(0xff71C3A1),
  id: 4,
  taype: "kavkaz 4",
  name: "ШBarbekyu qo'zichoq qovurg'alari",
  coast: "678 000 so'm",
  time: "19 min",
  inCount: "6 ing",
  imagUrl: "assets/images/meal4.png",
  kalori: "440 кал",
      namedetal:"Chinese Uzb4",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor:Color(0xffA8B6FF) ,
  id: 5,
  taype: "kavkaz 5",
  name: "Barbekyu qo'zichoq qovurg'alari ",
  coast: "705 000 so'm",
  time: "22 min",
  inCount: "4.5 ing",
  imagUrl: "assets/images/meal5.png",
  kalori: "425 кал",
      namedetal:"Chinese Uzb5",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor:Color(0xffFFE7A8) ,
  id: 6,
  taype: "kavkaz 6",
  name: "Barbekyu qo'zichoq qovurg'alari 6",
  coast: "780 000 so'm",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal6.png",
  kalori: "412 кал",
      namedetal:"Chinese Uzb6",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor: Color(0xffCEA8FF),
  id: 7,
  taype: "kavkaz 7",
  name: "Shashlik 7",
  coast: "810 000 so'm",
  time: "23 min",
  inCount: "7 ing",
  imagUrl: "assets/images/meal7.png",
  kalori: "421 кал",
      namedetal:"Chinese Uzb7",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor:Color(0xffA8FFB1) ,
  id: 8,
  taype: "kavkaz 8",
  name: "Barbekyu qo'zichoq qovurg'alari 8",
  coast: "904 000 so'm",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal8.png",
  kalori: "410 кал",
      namedetal:"Chinese Uzb8",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),
  Meal(
  banercolor: Color(0xffFFA8A8),
  id: 9,
  taype: "kavkaz 9",
  name: "Barbekyu qo'zichoq qovurg'alari 9",
  coast: "756 000 so'm",
  time: "21 min",
  inCount: "4 ing",
  imagUrl: "assets/images/meal9.png",
  kalori: "405 кал",
      namedetal:"Chinese Uzb9",
      text: """Menga nima deyishmasin, eng mazali shish kabob qo'zichoqdan keladi. Haqiqatan ham bitta kamchilik bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q, hamma tokda shish kebab sotib oladi.
Qo'llarning to'g'ri joydan o'sishi muhim emas, barbekyu bu uçurtmalar bizni qoldirgan narsalardan tayyorlanishi mumkin. Keling, qo'zichoq qovurg'alarini pishiraylik."""
  ),];



  static List<Meal> mealUs=[
  Meal(
  banercolor: Color(0xffF2DFE1),
  id: 1,
  taype: "Caucasian",
  name: "Barbecue lamb ribs",
  coast: "904 000 soum",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/shashlik1.png",
  kalori: "438 kal",
      namedetal:"Chinese cuisine",
    text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor: Color(0xffDCC7B1),
  id: 2,
  taype: "Caucasian 2",
  name: "Shashlik ingliz",
  coast: "500 000 soum",
  time: "15 min",
  inCount: "4 ing",
  imagUrl: "assets/images/shashlik2.png",
  kalori: "400 kal",
      namedetal:"Chinese cuisine2",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor: Color(0xffFFC5A8),
  id: 3,
  taype: "Caucasian",
  name: "Barbecue lamb ribs 3",
  coast: "605 000 soum",
  time: "21 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal3.png",
  kalori: "420 kal",
      namedetal:"Chinese cuisine 3",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor: Color(0xff71C3A1),
  id: 4,
  taype: "Caucasian 4",
  name: "Barbecue lamb ribs",
  coast: "678 000 soum",
  time: "19 min",
  inCount: "6 ing",
  imagUrl: "assets/images/meal4.png",
  kalori: "440 kal",
      namedetal:"Chinese cuisine 4",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor:Color(0xffA8B6FF) ,
  id: 5,
  taype: "Caucasian 5",
  name: "Barbecue lamb ribs",
  coast: "705 000 soum",
  time: "22 min",
  inCount: "4.5 ing",
  imagUrl: "assets/images/meal5.png",
  kalori: "425 kal",
      namedetal:"Chinese cuisine 4",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''

  ),
  Meal(
  banercolor:Color(0xffFFE7A8),
  id: 6,
  taype: "Caucasian 6",
  name: "Barbecue lamb ribs 6",
  coast: "780 000 soum",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal6.png",
  kalori: "412 kal",
      namedetal:"Chinese cuisine 7",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor: Color(0xffCEA8FF),
  id: 7,
  taype: "Caucasian 7",
  name: "Shashilik 7",
  coast: "810 000 soum",
  time: "23 min",
  inCount: "7 ing",
  imagUrl: "assets/images/meal7.png",
  kalori: "421 kal",
      namedetal:"Chinese cuisine 8",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor:Color(0xffA8FFB1) ,
  id: 8,
  taype: "Caucasian 8",
  name: "Barbecue lamb ribs 8",
  coast: "904 000 soum",
  time: "20 min",
  inCount: "5 ing",
  imagUrl: "assets/images/meal8.png",
  kalori: "410 kal",
      namedetal:"Chinese cuisine 5",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  ),
  Meal(
  banercolor: Color(0xffFFA8A8),
  id: 9,
  taype: "Caucasian 9",
  name: "Barbecue lamb ribs 9",
  coast: "756 000 soum",
  time: "21 min",
  inCount: "4 ing",
  imagUrl: "assets/images/meal9.png",
  kalori: "405 kal",
      namedetal:"Chinese cuisine 9",
      text: '''No matter what they tell me, the most delicious shish kebab comes from lamb. There is really one downside. It is impossible to buy a normal lamb at the bazaar, everyone buys shish kebabs on the vine.
It doesn’t matter if the hands grow from the right place, the barbecue can be cooked from what these kites left us. Let's cook lamb ribs.'''
  )];



}