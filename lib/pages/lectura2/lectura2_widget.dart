import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lectura2_model.dart';
export 'lectura2_model.dart';

class Lectura2Widget extends StatefulWidget {
  const Lectura2Widget({Key? key}) : super(key: key);

  @override
  _Lectura2WidgetState createState() => _Lectura2WidgetState();
}

class _Lectura2WidgetState extends State<Lectura2Widget> {
  late Lectura2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lectura2Model());
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
                  'https://www.elmayorportaldegerencia.com/Libros/Mercadeo/%5BPD%5D%20Libros%20-%2048%20leyes%20del%20Poder.pdf',
              height: 300.0,
              horizontalScroll: false,
            ),
          ),
        ),
      ),
    );
  }
}
