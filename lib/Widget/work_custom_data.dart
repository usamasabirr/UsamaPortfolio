import 'package:flutter/material.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final String image;

  const WorkCustomData(
      {Key key, @required this.title, @required this.subTitle, @required this.duration, @required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: VerticalDivider(
                color: Color(0xff64FFDA),
                thickness: 1.75,
                width: 10,
                indent: 10,
                endIndent: 10,
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xffCCD6F6).withOpacity(0.5),

                //fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              duration,
              style: TextStyle(
                fontSize: 12.0,
                color: Color(0xffCCD6F6).withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
