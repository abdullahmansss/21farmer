//import 'package:flutter/material.dart';
//
//import '../../constants.dart';
//import 'destinations.dart';
//
//class MainScreen extends StatefulWidget {
//  @override
//  _MainScreenState createState() => _MainScreenState();
//}
//
//class _MainScreenState extends State<MainScreen> {
//  int currentIndex = 0;
//  PageController _pageController = PageController();
//
//  Drawer buildDrawer() => Drawer(
//        elevation: 10,
//        child: ListView(
//          padding: EdgeInsets.all(0),
//          children: <Widget>[
//            DrawerHeader(
//              padding: EdgeInsets.all(0),
//              child: Container(
//                color: kDarkBlue,
//                padding: EdgeInsets.all(32),
//                child: Image.asset(
//                  getAsset('logo', Extensions.PNG),
//                ),
//              ),
//            ),
///*         buildDrawerItem(
//                'أعضاء هيئة التدريس', FontAwesomeIcons.chalkboardTeacher, () {
//              push(context, TeachersScreen());
//              //pop(context);
//            }),
//            buildDrawerItem(
//                'إختبار تحديد المستوي', FontAwesomeIcons.chalkboardTeacher, () {
//              push(context, GeneralTestsScreen());
//            }),
//            buildDrawerItem('المنتديات', FontAwesomeIcons.chalkboardTeacher,
//                () {
//              push(context, ForumsSectionsScreen());
//            }),
//            buildDrawerItem('من نحن', FontAwesomeIcons.chalkboardTeacher, () {
//              push(context, AboutUsScreenPage());
//            }),
//            buildDrawerItem('سياسة الموقع', FontAwesomeIcons.chalkboardTeacher,
//                () {
//              push(context, TermsAndConditionsScreenPage());
//            }),
//            buildDrawerItem('مقترحاتي', FontAwesomeIcons.chalkboardTeacher, () {
//              push(context, SuggestionsScreen());
//            }),
//            buildDrawerItem('الإنجازات', FontAwesomeIcons.chalkboardTeacher,
//                () {
//              push(context, AchievementsScreenPage());
//            }),
//            buildDrawerItem('الدعم الفني', FontAwesomeIcons.chalkboardTeacher,
//                () {
//              push(context, TicketsScreen());
//            }),
//            buildDrawerItem('الأسئلة الشائعة', FontAwesomeIcons.questionCircle,
//                () {
//              push(context, FaqQuestionsScreen());
//            }),
//            buildDrawerItem('تواصل معنا', Icons.contact_mail, () {
//              push(context, ContactUsScreenPage());
//            }),
//            buildDrawerItem('تسجيل الخروج', Icons.exit_to_app, () async {
//              SharedPreferences prefs=await SharedPreferences.getInstance();
//              replace(context, WelcomePage());
//            }
//            ),*/
//          ],
//        ),
//      );
//
//  @override
//  Widget build(BuildContext context) {
//    setStatusBarColor(kDarkBlue2);
//    return SafeArea(
//      child: Scaffold(
//        appBar: AppBar(
//          backgroundColor: kDarkBlue,
//          elevation: 0,
//          title: Text(
//            '',
//            style: get16Text(kWhite),
//          ),
//        ),
//        body: PageView(
//          physics: NeverScrollableScrollPhysics(),
//          onPageChanged: (index) {
//            currentIndex = index;
//            if (mounted) setState(() {});
//          },
//          controller: _pageController,
//          children: <Widget>[
////            HomeScreen(),
////            SearchScreen(),
////            CoursesScreen(destination: 0,),
////            ProfileScreen(),
//          ],
//        ),
//        drawer: buildDrawer(),
//        bottomNavigationBar: BottomNavigationBar(
//          backgroundColor: kWhite,
//          elevation: 10.0,
//          currentIndex: currentIndex,
//          selectedItemColor: kBlue,
//          unselectedItemColor: Colors.grey,
//          showSelectedLabels: true,
//          showUnselectedLabels: true,
//          type: BottomNavigationBarType.fixed,
//          onTap: (int index) {
//            _pageController.animateToPage(index,
//                duration: kDuration250, curve: kCurve);
//          },
//          items: bottomDestinations
//              .map(
//                (Destination destination) => BottomNavigationBarItem(
//                  icon: Icon(
//                    destination.icon,
//                  ),
//                  title: Text(
//                    destination.title,
//                    style: TextStyle(
//                      fontSize: 14,
//                    ),
//                  ),
//                ),
//              )
//              .toList(),
//        ),
//      ),
//    );
//  }
//
//  Widget buildDrawerItem(String title, IconData icon, Function onPressed) =>
//      ListTile(
//        leading: Icon(icon),
//        title: Text(
//          title,
//          style: get14Text(kBlack54),
//        ),
//        onTap: () {
//          pop(context);
//          onPressed();
//        },
//      );
//}
