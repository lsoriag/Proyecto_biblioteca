import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lectura1_model.dart';
export 'lectura1_model.dart';

class Lectura1Widget extends StatefulWidget {
  const Lectura1Widget({Key? key}) : super(key: key);

  @override
  _Lectura1WidgetState createState() => _Lectura1WidgetState();
}

class _Lectura1WidgetState extends State<Lectura1Widget> {
  late Lectura1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lectura1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xA400FF22),
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: 428.0,
            height: 913.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: FlutterFlowPdfViewer(
              networkPath:
                  'https://blog.myl.cl/wp-content/uploads/2020/04/Tzu-Sun-El-Arte-De-La-Guerra-Ilustrado.pdf',
              height: 300.0,
              horizontalScroll: false,
            ),
          ),
        ),
      ),
    );
  }
}
