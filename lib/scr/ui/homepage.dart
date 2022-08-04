import 'package:beginner/models/lang_provider.dart';
import 'package:beginner/scr/detalis/Lang.dart';
import 'package:beginner/scr/ui/dishe-page.dart';
import 'package:beginner/scr/ui/fasfood-page.dart';
import 'package:beginner/scr/ui/ichimlik-page.dart';
import 'package:beginner/scr/ui/salts-page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _nselekted = 0;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(Duration(seconds: 2));
  }

  List<Widget> _pages = [
    Dishespage(),
    Salatspage(),
    Ichimlikpage(),
    Fastfoodpage()
  ];
  final List<Lang> _lages = [
    Lang("Ru", false),
    Lang("Uz", true),
    Lang("En", false),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              minWidth: 50,
              groupAlignment: 1,
              onDestinationSelected: (index) {
                setState(
                  () {
                    _nselekted = index;
                  },
                );
              },
              selectedLabelTextStyle:
                  TextStyle(color: Colors.white, fontSize: 24),
              unselectedLabelTextStyle:
                  TextStyle(color: Colors.white70, fontSize: 18),
              labelType: NavigationRailLabelType.all,
              backgroundColor: Color(0xff2A5278),
              selectedIndex: _nselekted,
              leading: buildColumntogel(),
              destinations: [
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
            ),
            Expanded(
              child: _pages[_nselekted],
            )
          ],
        ),
      ),
    );
  }

  Column buildColumntogel() {
    final langprovider = Provider.of<Langprovider>(context, listen: false);
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
                langprovider.langChanged();
                break;
              case 1:
                context.setLocale(
                  const Locale('uz', 'UZ'),
                );
                langprovider.langChanged();
                break;
              case 2:
                context.setLocale(
                  const Locale('en', 'US'),
                );
                langprovider.langChanged();
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
            Togelbuttun(_lages[0]),
            Togelbuttun(_lages[1]),
            Togelbuttun(_lages[2])
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
      backgroundColor: til.isactive ? Color(0xff206498) : Color(0xff2A5270),
    );
  }
}
