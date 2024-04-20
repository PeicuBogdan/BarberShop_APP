import '/componente/title_author/title_author_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Title_Author component.
  late TitleAuthorModel titleAuthorModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {
    titleAuthorModel = createModel(context, () => TitleAuthorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleAuthorModel.dispose();
  }
}
