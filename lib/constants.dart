import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const kWhite = Colors.white;
const kBlack = Colors.black;
const kBlack8 = Color(0x08000000);
const kBlack12 = Colors.black12;
const kBlack38 = Colors.black38;
const kBlack54 = Colors.black54;
bool isShow;

const kTeal = Color(0xFF00BF9D);
const kNewTeal = Color(0xFF00cc99);
const kOffWhite = Color(0xFFF7F8FA);
const kBlue = Color(0xFF3498DB);
const kGray = Color(0xFFE2E3E5);
const kDarkBlue = Color(0xFF166194);
const kDarkBlue2 = Color(0xFF124569);
const kGreen = Color(0xFF40B25A);
const kBackgroundWhite = Color(0xFFF4F4F4);
//
//const kRadius10 = Radius.circular(10);
//const kRadius20 = Radius.circular(20);
//const kRadius30 = Radius.circular(30);
//const kRadius50 = Radius.circular(50);
//const kRadius100 = Radius.circular(100);
//
//const kDuration250 = Duration(milliseconds: 250);
//const kDuration500 = Duration(milliseconds: 500);

//int testID = 63;
//String testToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb3VudHJ5X2NvZGUiOiIrMiIsImlzQWN0aXZlIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsIl9pZCI6IjVlYjk2MGJjN2M4ZjY5NWM1YzcyNzg5YSIsIm5hbWUiOiJNdWFobW1hZCBBYm91bGhhZGVlZCIsImVtYWlsIjoiTXVoYW1tYWRhYm91bGhhZGVlZEBnbWFpbC5jb20iLCJtb2JpbGUiOiIyMDEwOTEwNjc1NzUiLCJwYXNzd29yZCI6IjEyMzQ1Njc3IiwiX192IjowLCJpYXQiOjE1ODkzMjg3NDZ9.7L2QWUcmZE97RmrkwekSZjG94ITnbYBOGJ6pmkauWgY';
String testToken = '';

//const kCurve = Curves.decelerate;

//launchURL(String url) async {
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }
//}

showToast(String text, bool success) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: success ? Colors.green : Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
//
//showLongToast(String text, bool success) {
//  Fluttertoast.showToast(
//    msg: text,
//    toastLength: Toast.LENGTH_LONG,
//    gravity: ToastGravity.BOTTOM,
//    timeInSecForIosWeb: 1,
//    backgroundColor: success ? Colors.green : Colors.red,
//    textColor: Colors.white,
//    fontSize: 16.0,
//  );
//}
//
//List<String> spinnerItems = ['تعديل', 'حذف'];
//List<genderModel> genderItems = [genderModel(key: 'ذكر', value: 'male'), genderModel(key: 'أنثي', value: 'female')];
//List<String> searchItems = [
//  'منتديات',
//  'تذاكر الدعم الفني',
//  'دورات',
//  'فصول',
//  'متون',
//  'شروحات',
//  'اسئلة',
//  'فوائد',
//  'ملخصات',
//  'مقترحاتي',
//  'أعضاء هيئة التدريس'
//];
//
//void push(BuildContext context, Widget screen) =>
//    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
//
//void replace(BuildContext context, Widget route) =>
//    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => route));
//
//Visibility initProgress({@required bool isShowing}) => Visibility(
//      visible: isShowing,
//      child: SpinKitFadingCircle(
//        itemBuilder: (BuildContext context, int index) {
//          return DecoratedBox(
//            decoration: BoxDecoration(
//              shape: BoxShape.circle,
//              color: index.isEven ? kBlue : kTeal,
//            ),
//          );
//        },
//      ),
//    );

//void pop(BuildContext context) => Navigator.pop(context);

//enum Extensions { PNG, JPG, JPEG, GIF, XML, SVG }

//getProgress(BuildContext context) => ProgressDialog(context);
//
//showSnack(BuildContext context, String text) => Scaffold.of(context).showSnackBar(_getSnack(text ?? 'NULL'));
//
//SnackBar _getSnack(String text) => SnackBar(
//      duration: Duration(milliseconds: 500),
//      content: Text(
//        text,
//        style: TextStyle(
//          fontFamily: 'Cairo',
//          fontSize: 16,
//          color: kWhite,
//        ),
//      ),
//    );
//
//String getAsset(String name, Extensions extension) {
//  String ext = '';
//  switch (extension) {
//    case Extensions.PNG:
//      ext = 'png';
//      break;
//    case Extensions.JPG:
//      ext = 'jpg';
//      break;
//    case Extensions.JPEG:
//      ext = 'jpeg';
//      break;
//    case Extensions.GIF:
//      ext = 'gif';
//      break;
//    case Extensions.XML:
//      ext = 'xml';
//      break;
//    case Extensions.SVG:
//      ext = 'svg';
//      break;
//  }
//  return 'assets/$name.$ext';
//}
//
//TextStyle get12Text(Color color) => TextStyle(fontSize: 12, color: color);
//
//TextStyle get14Text(Color color) => TextStyle(fontSize: 14, color: color);
//
//TextStyle get16Text(Color color) => TextStyle(fontSize: 16, color: color);
//
//TextStyle get18Text(Color color) => TextStyle(fontSize: 18, color: color);
//
//TextStyle get20Text(Color color) => TextStyle(fontSize: 20, color: color);
//
//TextStyle get22Text(Color color) => TextStyle(fontSize: 22, color: color);
//
//TextStyle getCustomText(Color color, int size) => TextStyle(fontSize: size.toDouble(), color: color);
//
//HtmlTextView parseHtml({@required String data}) => HtmlTextView(
//      data: data,
//      customFont: 'Cairo',
//    );
//
//SizedBox marginVertical(int margin) => SizedBox(height: margin.toDouble());
//
//SizedBox marginHorizontal(int margin) => SizedBox(width: margin.toDouble());
//
//void setStatusBarColor(Color color) {
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: color, //or set color with: Color(0xFF0000FF)
//  ));
//}
//
//Card infoCard({String header, String body, double kTop, double kBottom}) => Card(
//      margin: EdgeInsets.only(
//        top: kTop,
//        right: 30.0,
//        left: 30.0,
//        bottom: kBottom,
//      ),
//      elevation: 5.0,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
//      child: Container(
//        padding: const EdgeInsets.all(13.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              header,
//              style: get16Text(kBlack),
//            ),
//            Container(
//              width: 60.0,
//              height: 5.0,
//              margin: EdgeInsets.only(
//                top: 10.0,
//                bottom: 10.0,
//              ),
//              decoration: new BoxDecoration(
//                  color: kDarkBlue,
//                  borderRadius: new BorderRadius.all(
//                    Radius.circular(10.0),
//                  )),
//            ),
//            Container(
//              width: double.infinity,
//              child: HtmlTextView(
//                data: body,
//                customFont: 'Cairo',
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//
//Card listCard({String header, List<Widget> list, double kTop, double kBottom}) => Card(
//      margin: EdgeInsets.only(
//        top: kTop,
//        right: 30.0,
//        left: 30.0,
//        bottom: kBottom,
//      ),
//      elevation: 5.0,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
//      child: Container(
//        padding: const EdgeInsets.all(13.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              header,
//              style: get16Text(kBlack),
//            ),
//            Container(
//              width: 60.0,
//              height: 5.0,
//              margin: EdgeInsets.only(
//                top: 10.0,
//                bottom: 10.0,
//              ),
//              decoration: new BoxDecoration(
//                  color: kDarkBlue,
//                  borderRadius: new BorderRadius.all(
//                    Radius.circular(10.0),
//                  )),
//            ),
//            Column(
//              children: list,
//            ),
//          ],
//        ),
//      ),
//    );
//
//class genderModel {
//  String _key;
//  String _value;
//
//  genderModel({String key, String value}) {
//    this._key = key;
//    this._value = value;
//  }
//
//  String get value => _value;
//
//  String get key => _key;
//}
