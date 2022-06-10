import '../conclusion/conclusion_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key key}) : super(key: key);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: DefaultTabController(
                      length: 1,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: Color(0xFF4B39EF),
                            unselectedLabelColor: Color(0xFF57636C),
                            labelStyle:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF1D2429),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                            indicatorColor: Color(0xFF4B39EF),
                            tabs: [
                              Tab(
                                text: 'Empleados',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 12, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Juan',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyKbLjNMsGeHYpTSQJknrtSgQ9F2VtdTAehg&usqp=CAU',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Carlos',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Adrian',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://economia3.com/wp-content/uploads/2021/02/como-retener-a-un-empleado-con-talento-noticias-infocif.jpg',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Alan',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://cdn-3.expansion.mx/dims4/default/ba295ef/2147483647/strip/true/crop/328x230+0+0/resize/1200x841!/format/webp/quality/90/?url=https%3A%2F%2Fcdn-3.expansion.mx%2F71%2F71d2075e5798e7901eefaf6a70060569%2Fempleadoempleopreocupadoestresjijpg.jpg',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Ricardo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmFWMM6cg0SU2OvYYYeSqCfO5A2ER1n5NSCA&usqp=CAU',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Gilberto',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 16, 44),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 12, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_3UGKCUaPEKDIT8t0kHbxcMB6JtUUzCk3pA&usqp=CAU',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Fernando',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConclusionWidget(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
