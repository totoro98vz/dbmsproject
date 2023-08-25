import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_page_model.dart';
export 'data_page_model.dart';

class DataPageWidget extends StatefulWidget {
  const DataPageWidget({
    Key? key,
    this.userID,
  }) : super(key: key);

  final DocumentReference? userID;

  @override
  _DataPageWidgetState createState() => _DataPageWidgetState();
}

class _DataPageWidgetState extends State<DataPageWidget> {
  late DataPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF39CFEF),
          automaticallyImplyLeading: false,
          title: Text(
            'Let\'s check your events and matching data!',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 650.0,
                    height: 800.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: '<',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Text(
                              'Enter your User ID',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                90.0, 0.0, 90.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'User ID',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text:
                                'Get Statistics of Matches you were grouped with!',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 60.0, 0.0, 0.0),
                                    child: Text(
                                      'Current Cluster',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Average Age',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Average Income',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Average Height',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Bodytype',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Diet',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Drugs',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Drinks',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Smokes',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Education',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Median Pets',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 60.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord.cluster
                                                        .toString(),
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord.avgAge
                                                        .toString(),
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgIncome
                                                        .toString(),
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgHeight
                                                        .toString(),
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgBodyType,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgDiet,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgDrugs,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgDrinks,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgSmokes,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgEducation,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 10.0, 0.0, 0.0),
                                    child: StreamBuilder<GroupStatsRecord>(
                                      stream: GroupStatsRecord.getDocument(
                                          widget.userID!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGroupStatsRecord =
                                            snapshot.data!;
                                        return Text(
                                          valueOrDefault<String>(
                                            /* NOT RECOMMENDED */ _model
                                                        .textController1.text ==
                                                    'true'
                                                ? valueOrDefault<String>(
                                                    textGroupStatsRecord
                                                        .avgPets,
                                                    'Loading...',
                                                  )
                                                : 'N/A',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 650.0,
                    height: 800.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 90.0, 0.0, 0.0),
                            child: Text(
                              'Enter your User ID',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                90.0, 0.0, 90.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'User ID',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Get Details for Next Event!',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
