import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart1Widget extends StatefulWidget {
  const Cart1Widget({Key? key}) : super(key: key);

  @override
  _Cart1WidgetState createState() => _Cart1WidgetState();
}

class _Cart1WidgetState extends State<Cart1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int? productdemandValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF73B175),
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'My Cart',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    final cartItems = FFAppState().cartItems.toList();
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:
                            List.generate(cartItems.length, (cartItemsIndex) {
                          final cartItemsItem = cartItems[cartItemsIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 1,
                                  child: ClipRRect(
                                    child: Container(
                                      width: 390,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                      ),
                                      child: StreamBuilder<ProductsRecord>(
                                        stream: ProductsRecord.getDocument(
                                            cartItemsItem),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitSquareCircle(
                                                  color: Color(0xFF73B175),
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          final rowProductsRecord =
                                              snapshot.data!;
                                          return Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Image.network(
                                                      rowProductsRecord.image!,
                                                      width: 150,
                                                      height: 150,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(18, 0, 18, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                rowProductsRecord
                                                                    .name!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    20,
                                                                borderWidth: 1,
                                                                buttonSize: 30,
                                                                icon: Icon(
                                                                  Icons.close,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 18,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  setState(() =>
                                                                      FFAppState()
                                                                          .removeFromCartItems(
                                                                              cartItemsItem));
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            5),
                                                                child: Text(
                                                                  'quantity',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 5),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 2,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              ),
                                                              child: Container(
                                                                width: 130,
                                                                height: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                ),
                                                                child:
                                                                    FlutterFlowCountController(
                                                                  decrementIconBuilder:
                                                                      (enabled) =>
                                                                          FaIcon(
                                                                    FontAwesomeIcons
                                                                        .minus,
                                                                    color: enabled
                                                                        ? Color(
                                                                            0xDD000000)
                                                                        : Color(
                                                                            0xFFEEEEEE),
                                                                    size: 15,
                                                                  ),
                                                                  incrementIconBuilder:
                                                                      (enabled) =>
                                                                          FaIcon(
                                                                    FontAwesomeIcons
                                                                        .plus,
                                                                    color: enabled
                                                                        ? Color(
                                                                            0xFF73B175)
                                                                        : Color(
                                                                            0xFFEEEEEE),
                                                                    size: 15,
                                                                  ),
                                                                  countBuilder:
                                                                      (count) =>
                                                                          Text(
                                                                    count
                                                                        .toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Open Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  count:
                                                                      productdemandValue ??=
                                                                          1,
                                                                  updateCount: (count) =>
                                                                      setState(() =>
                                                                          productdemandValue =
                                                                              count),
                                                                  stepSize: 1,
                                                                  minimum: 1,
                                                                  maximum: 1,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child: Text(
                                                                formatNumber(
                                                                  rowProductsRecord
                                                                      .price!,
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .periodDecimal,
                                                                  currency: '₹',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                    ),
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
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF73B175),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0x430F1113),
                      offset: Offset(0, -2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Checkout pressed ...');
                  },
                  text: 'Checkout',
                  icon: FaIcon(
                    FontAwesomeIcons.shoppingCart,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0xFF73B175),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 0,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  showLoadingIndicator: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
