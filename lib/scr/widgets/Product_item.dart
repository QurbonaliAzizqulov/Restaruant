import 'package:animate_do/animate_do.dart';
import 'package:beginner/scr/detalis/deatlis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/main_provider.dart';
import '../../models/navigator.dart';

class Productitem extends StatefulWidget {
  final meal;
  final index;
  bool isFavorite;


   Productitem(this.meal, this.index, {this.isFavorite = false, Key? key})
      : super(key: key);

  @override
  State<Productitem> createState() => _ProductitemState();
}

class _ProductitemState extends State<Productitem> {


  @override
  Widget build(BuildContext context) {
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
              height: 400,
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: widget.meal.banercolor),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Text(
                      "| ${widget.meal.taype}",
                      style: const TextStyle(
                        color: Color(0xff00195C),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Text(widget.meal.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("cost".tr()),
                        Text(widget.meal.coast!),
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
                            Text("  ${widget.meal.time}"),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/Group.png"),
                            Text(" ${widget.meal.inCount}"),
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
                        IconButton(
                            onPressed: () async {
                              if (widget.isFavorite) {
                                remowfavorite(widget.index);
                              } else {
                                addfavorite();
                              }
                            },
                            icon: widget.isFavorite
                                ? ElasticIn(
                                    child: Icon(Icons.favorite_outlined,
                                        size: 30, color: Colors.red))
                                : Icon(Icons.favorite_border_outlined,
                                    color: Colors.red, size: 30)),
                        SizedBox(
                          height: 38,
                          width: 110,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xff175B8F)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              onPressed: () {

                                Navigator.of(context).push(
                                    createRoute(Detalispage(detalisindex: widget.index,)));
                              },
                              child: Text("More".tr())),
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
          top: -60,
          right: -20,
          child: Card(
              color: Colors.transparent,
              elevation: 30,
              child: GestureDetector(
                onTap: (){
                },
                child: Hero(
                  tag: "Rasmm",
                  child: Image.asset(
                    widget.meal.imagUrl!,
                    height: 150,
                    width: 150,
                  ),
                  transitionOnUserGestures: true,
                ),
              )),
        ),
      ],
    );
  }




  addfavorite() async {
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);

    List<int> favList = await mainprovider.getSFavoriteList();
    var newList = List.of(favList);
    if (!newList.contains(widget.index)) {
      newList.add(widget.index);
    }
    mainprovider.setFavoritelist(newList);
  }

  remowfavorite(index) async {
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);

    List<int> favList = await mainprovider.getSFavoriteList();
    var newList = List.of(favList);
    newList.remove(index);
    mainprovider.setFavoritelist(newList);

  }
}
