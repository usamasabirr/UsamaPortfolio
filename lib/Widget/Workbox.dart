import 'package:flutter/material.dart';
import 'package:potrtfolio/Widget/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "BeeLogix",
          subTitle:
              "Developed and maintained high-quality mobile applications using Flutter framework.\nCollaborated with the design team to create engaging user interfaces and experiences.\nWorked with RESTful APIs to fetch and display data in the application.\nIntegrated Firebase services such as Authentication, Firestore, and Cloud Functions to enhance application functionality.\nImplemented state management patterns like Provider and Bloc for efficient and scalable application architecture.\nUsed Git for version control and collaborated with the team on code reviews and pull requests.",
          duration: "2022 - Present",
          image: 'images/beelogix.jpeg',
        ),
        SizedBox(
          height: 10,
        ),
        WorkCustomData(
          title: "Fiverr",
          subTitle:
              "Since August 2020, I have been actively working as a Flutter developer on the popular freelancing platform, Fiverr.\nWith a global clientele, I have had the opportunity to collaborate with multiple clients from different parts of the world.\n I have maintained a stellar 5-star rating on Fiverr, reflecting my commitment to delivering top-notch quality and exceptional customer service.\nHaving completed over 40 orders successfully, I have a proven track record of meeting deadlines and ensuring client satisfaction.",
          duration: "Aug - 2020 - Present",
          image: 'images/fiverr.png',
        ),
        // WorkCustomData(
        //   title:
        //       "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
        //   subTitle:
        //       "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 1+ years and take pride in everything I do.",
        //   duration: "Oct - 2019 to Nov - 2020",
        // ),
        // WorkCustomData(
        //   title: "Mentor at Contributor's Hack, 2020",
        //   subTitle:
        //       "Working as a mentor in HakinCode organization for Flutter CodeAsylums application \n where I can utilize my skills and be an asset to the organization",
        //   duration: "Sep 2020 - Oct 2020",
        // ),
        // WorkCustomData(
        //   title: "Flutter Intern at Mind Sports League | Gurgaon In",
        //   subTitle:
        //       "Building world class Poker Learning platform. Poker Sports League is India’s first poker league is to sportify the game of poker through a unique, team based format",
        //   duration: "Nov - 2020 Present",
        // ),
      ],
    );
  }
}
