import 'package:potrtfolio/Model/mobile_project_detail.dart';

class ProjectData {
  static List<ProjectDetailModel> projectDetail = [
    ProjectDetailModel(
        title: 'Rent Wheel',
        youtubeId: 'vpaI7lN9YHI',
        summary:
            "Rent Wheel is a cutting-edge mobile application developed in Flutter, designed to revolutionize the rental process for heavy construction vehicles. The app serves as a centralized platform where users can effortlessly upload their available construction vehicles, such as excavators, bulldozers, and cranes, for others to rent.With Rent Wheel, renting heavy construction vehicles has never been easier. The app connects vehicle owners with potential renters, enabling them to efficiently browse through a wide range of available options. Users can conveniently view detailed information about each vehicle, including specifications, rental rates, and availability.",
        imageList: [
          ImageDetails(imagePath: 'assets/images/rentwheel/rentwheel.png', title: 'Rent Wheel'),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/1.png',
              title: 'Login Screen',
              featureSummary:
                  'The login screen of the Rent Wheel app allows users to access their accounts. It presents a clean and user-friendly interface with input fields for email/username and password. Users can securely enter their credentials and tap the login button to authenticate their account.'),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/2.png',
              title: 'Signup Screen',
              featureSummary:
                  "The Signup screen enables new users to create an account on Rent Wheel. It prompts users to provide their personal information, such as name, email, password, and contact details. Users can complete the registration process by tapping the register button, after which they gain access to the app's features."),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/3.png',
              title: 'Home Screen',
              featureSummary:
                  "The home screen serves as the central hub of Rent Wheel, displaying a list of available vehicles for rent. Users can browse through the vehicle listings, each featuring essential details like vehicle type, location, rental rates, and availability. The screen also incorporates different filters to help users narrow down their search based on vehicle type, location, rental duration, and other parameters"),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/5.png',
              title: 'Vehicle Detail Screen',
              featureSummary:
                  "The vehicle detail screen provides users with comprehensive information about a specific vehicle listing. The screen includes a map view indicating the vehicle's location, allowing users to assess its proximity to their project sites. Additionally, users can find contact details for the vehicle owner, making it convenient to initiate inquiries or rental requests directly from the screen."),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/6.png',
              title: 'Favorite Screen',
              featureSummary:
                  "The favorite screen allows users to save and manage their favorite vehicle listings. Users can mark specific vehicles as favorites, making it easier to find and access them later. This screen presents a convenient list view of all the saved favorites, enabling users to remove or view more details about each vehicle."),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/7.png',
              title: 'Add Post Screen',
              featureSummary:
                  "The add post screen enables vehicle owners to create a new listing for their construction vehicles. Users can input relevant details about the vehicle, including images, specifications, rental rates, availability, and contact information. This screen provides a straightforward form for owners to add comprehensive information about their vehicles and effectively market them for rent."),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/8.png',
              title: 'Chat Detail Screen',
              featureSummary:
                  "The chat screen facilitates seamless communication between vehicle owners and renters. Once users express interest in a particular vehicle, they can initiate a conversation through the chat feature. This screen displays the chat history, allowing users to exchange messages, negotiate terms, and finalize rental agreements. Users receive real-time notifications for new messages, ensuring prompt and efficient communication."),
          ImageDetails(
              imagePath: 'assets/images/rentwheel/9.png',
              title: 'Profile Screen',
              featureSummary:
                  "The profile screen in the Rent Wheel app allows users to view and manage their personal information. It serves as a centralized location where users can access and update details such as their name, email address, and date of birth (DOB)."),
        ])
  ];
}
