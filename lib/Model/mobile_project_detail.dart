import 'package:flutter/widgets.dart';

class ProjectDetailModel {
  List<ImageDetails> imageList;
  String title;
  String summary;
  String youtubeId;

  ProjectDetailModel({@required this.imageList, @required this.summary, @required this.title, this.youtubeId});
}

class ImageDetails {
  String imagePath;
  String title;
  String featureSummary;
  ImageDetails({this.imagePath, this.title, this.featureSummary});
}
