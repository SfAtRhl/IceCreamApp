import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../screens/home/components/body.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/upper_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final screens = [
      Stack(
        children: const [
          Body(),
          UpperBody(),
        ],
      ),
      Container(
        child: Center(child: Text("file")),
      ),
      Container(
        child: Center(child: Text("bell")),

      ),
      Container(
        child: Center(child: Text("user")),

      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          screens[page],
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: page,
                  selectedItemColor: Color(0xFF137FD6),
                  unselectedItemColor: Theme.of(context).iconTheme.color,
                  onTap: (int index) {
                    setState(() {
                      page = index;
                    });
                  },
                  type: BottomNavigationBarType.fixed,
                  items: [
                    buildBottomNavigationBarItem(
                        icon: "home", label: '', index: 0),
                    buildBottomNavigationBarItem(
                        icon: "file", label: '', index: 1),
                    buildBottomNavigationBarItem(
                        icon: "bell", label: '', index: 2),
                    buildBottomNavigationBarItem(
                        icon: "user", label: '', index: 3),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    String label,
    icon,
    int index,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SvgPicture.asset(
              "assets/icons/${icon}.svg",
              color: page == index ? kBleu : kGrey,
            ),
          ),
          page == index
              ? Container(
                  width: 25,
                  height: 2,
                  color: Colors.blue,
                )
              : SizedBox(),
        ],
      ),
      label: label,
    );
  }

}
