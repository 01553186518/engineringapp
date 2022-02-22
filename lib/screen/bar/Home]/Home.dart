import 'package:flutter/material.dart';
import 'package:ma/screen/Map%20GOOGle/map%20project.dart';
import 'package:ma/screen/bar/clendar/calendar.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';






import '../../Sigin.dart';
import '../../Map GOOGle/map inproject .dart';
import 'Ditales compne.dart';






class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go APP',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Home',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();


  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Colors.white,
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: buildMenu(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => toggleMenu(),
              ),
              actions: [

              ],

            ),
            body:Calendar()


            ),
          ),
        ),
      );

  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('lib/assets/view/image/1644033560140.png',width: 100,height: 100,),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Eng",
                  style: TextStyle(color: Colors.black),
                ),

                SizedBox(height: 20.0),

              ],
            ),
          ),





          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Mapp()));
            },
            leading: const Icon(Icons.add_location, size: 20.0, color: Colors.black),
            title: const Text("Locathion In Project"),
            tileColor: Colors.white,
            dense: true,
          ),










          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MappCompne()));
            },
            leading: const Icon(Icons.account_balance_rounded,
                size: 20.0, color: Colors.black),
            title: const Text("Locathion In Company"),
            tileColor: Colors.white,
            dense: true, // padding: EdgeInsets.zero,
          ),















          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Calendar()));
            },
            leading: const Icon(Icons.date_range,
                size: 20.0, color: Colors.black),
            title: const Text("Date"),
            tileColor: Colors.white,
            dense: true, // padding:EdgeInsets.zero,
          ),









          ListTile(
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Calendar()));
            },
            leading: const Icon(Icons.monetization_on,
                size: 20.0, color: Colors.black),
            title: const Text("Over Time"),
            tileColor: Colors.white,
            dense: true,
            // padding: EdgeInsets.zero,
          ),










          ListTile(
            onTap: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Ditalse()));

            },
            leading:
            const Icon(Icons.work_off_sharp, size: 20.0, color: Colors.black),
            title: const Text("Vaction jop"),
            tileColor: Colors.white,
            dense: true,















            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyCustomLoginUI()));

            },
            leading:
            const Icon(Icons.exit_to_app, size: 20.0, color: Colors.black),
            title: const Text("Exit"),
            tileColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}