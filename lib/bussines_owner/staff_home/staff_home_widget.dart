import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:flutter/material.dart';
import 'staff_home_model.dart';
export 'staff_home_model.dart';

class StaffHomeWidget extends StatefulWidget {
  const StaffHomeWidget({super.key});

  @override
  State<StaffHomeWidget> createState() => _StaffHomeWidgetState();
}

class _StaffHomeWidgetState extends State<StaffHomeWidget> {
  late StaffHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StaffHomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Staff_Home'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: const SafeArea(
          top: true,
          child: FlutterFlowStaticMap(
            location: LatLng(9.341465, -79.891704),
            apiKey: 'ENTER_YOUR_MAPBOX_API_KEY_HERE',
            style: mapbox.MapBoxStyle.Light,
            width: 300.0,
            height: 300.0,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            zoom: 12,
            tilt: 0,
            rotation: 0,
          ),
        ),
      ),
    );
  }
}
