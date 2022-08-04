import 'package:badges/badges.dart';
import 'package:beginner/models/main_provider.dart';
import 'package:beginner/scr/detalis/Lang.dart';
import 'package:beginner/scr/ui/dishe-page.dart';
import 'package:beginner/scr/ui/fasfood-page.dart';
import 'package:beginner/scr/ui/favorit_page.dart';
import 'package:beginner/scr/ui/ichimlik-page.dart';
import 'package:beginner/scr/ui/salts-page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _nselekted = 1;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }
  List<Widget> _pages = [
    Favorite(),
    Dishespage(),
    Salatspage(),
    Ichimlikpage(),
    Fastfoodpage()
  ];
  final List<Lang> _lages = [
    Lang("Ru", false, "ru"),
    Lang("Uz", true, "uz"),
    Lang("En", false, "eng"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff24620e),
        body: Row(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: buildNavigationRail(context),
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: Navigator(
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (context) => _pages[_nselekted],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  NavigationRail buildNavigationRail(context) {

    return NavigationRail(
      groupAlignment: 1,
      onDestinationSelected: (index) {
        setState(
          () {
            _nselekted = index;
          },
        );
      },
      selectedLabelTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      unselectedLabelTextStyle: TextStyle(color: Colors.white70, fontSize: 18),
      labelType: NavigationRailLabelType.all,
      backgroundColor: Color(0xff2A5278),
      selectedIndex: _nselekted,
      leading: buildColumntogel(),
      destinations: [
        NavigationRailDestination(
            icon:  Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.favorite_outline,size: 30,),
            ),
            label:SizedBox(),

        ),
        NavigationRailDestination(
            icon: SizedBox(),
            label: RotatedBox(
              child: Text('dishes'.tr()),
              quarterTurns: -1,
            )),
        NavigationRailDestination(
            icon: SizedBox(),
            label: RotatedBox(
              child: Text('salads'.tr()),
              quarterTurns: -1,
            )),
        NavigationRailDestination(
            icon: SizedBox(),
            label: RotatedBox(
              child: Text('drinks'.tr()),
              quarterTurns: -1,
            )),
        NavigationRailDestination(
            icon: SizedBox(),
            label: RotatedBox(
              child: Text('fast_food'.tr()),
              quarterTurns: -1,
            )),
      ],
    );
  }

  Column buildColumntogel() {
    final mainprovider = Provider.of<Mainprovider>(context, listen: false);

    return Column(
      children: [
        ToggleButtons(
          onPressed: (int index) {
            setState(() {});
            _lages.forEach((element) {
              element.isactive = false;
            });
            switch (index) {
              case 0:
                context.setLocale(
                  const Locale('ru', 'RU'),
                );
                mainprovider.langChanged();
                break;
              case 1:
                context.setLocale(
                  const Locale('uz', 'UZ'),
                );
                mainprovider.langChanged();
                break;
              case 2:
                context.setLocale(
                  const Locale('en', 'US'),
                );
                mainprovider.langChanged();
                break;
            }

            _lages[index].isactive = true;
          },
          isSelected: _lages.map((e) => e.isactive).toList(),
          direction: Axis.vertical,
          borderColor: Colors.transparent,
          fillColor: Colors.transparent,
          selectedColor: Colors.transparent,
          splashColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          children: [
            CircleAvatar(
              radius: 23,
              child: Text(
                _lages[0].til,
                style: TextStyle(color:_lages[0].isactive? Colors.black87:Colors.red,fontWeight: FontWeight.bold),
              ),
              backgroundImage: AssetImage("assets/images/rus.png",),
              backgroundColor:
                  _lages[0].isactive ? Color(0xff206498) : Color(0xff2A5270),
            ),
            CircleAvatar(
              radius: 23,
              child: Text(
                _lages[1].til,
                style: TextStyle(color: _lages[1].isactive? Colors.black87:Colors.red,fontWeight: FontWeight.bold),
              ),
              backgroundImage: AssetImage("assets/images/uz.png"),
              backgroundColor:
                  _lages[1].isactive ? Color(0xff206498) : Color(0xff2A5270),
            ),
            CircleAvatar(
              radius: 23,
              child: Text(
                _lages[2].til,
                style: TextStyle(color: _lages[2].isactive? Colors.black87:Colors.red,fontWeight: FontWeight.bold),
              ),
              backgroundImage: AssetImage("assets/images/eng.png"),
              backgroundColor:
                  _lages[2].isactive ? Color(0xff206498) : Color(0xff2A5270),
            ),
            // Togelbuttun(_lages[1]),
            // Togelbuttun(_lages[2])
          ],
        ),
      ],
    );
  }

  Widget Togelbuttun(Lang til) {
    return CircleAvatar(
      radius: 23,
      child: Text(
        til.til,
        style: TextStyle(color: Colors.white),
      ),
      backgroundImage: AssetImage("assets/images/uz.png"),
      backgroundColor: til.isactive ? Color(0xff206498) : Color(0xff2A5270),
    );
  }
}
