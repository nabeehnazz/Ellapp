import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SuccesspageWidget extends StatefulWidget {
  const SuccesspageWidget({Key? key}) : super(key: key);

  @override
  _SuccesspageWidgetState createState() => _SuccesspageWidgetState();
}

class _SuccesspageWidgetState extends State<SuccesspageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Successpage',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF39D2C0),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                          frameRate: FrameRate(60),
                          repeat: false,
                          animate: true,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Congrats!',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Text(
                      'Thanks for service ',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'home',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.leftToRight,
                            ),
                          },
                        );
                      },
                      text: 'Go Home',
                      options: FFButtonOptions(
                        width: 130,
                        height: 50,
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF39D2C0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
