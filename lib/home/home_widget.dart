import '../backend/backend.dart';
import '../category/category_widget.dart';
import '../findproduct/findproduct_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController? pageViewController;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Jwellers1.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18, 8, 18, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: 330,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F2F3),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 22,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.filter_alt,
                                      color: FlutterFlowTheme.of(context)
                                          .darkSeaGreen,
                                      size: 22,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18, 18, 18, 18),
                child: Container(
                  width: 362,
                  height: 114,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://lh3.googleusercontent.com/Djgv81vq1TX8h7sTt6xujFB9j3cl35insfrkfvPfWwsCmCo0ZFqE06V3FADV1LLDGEIlY4OQDJYZbURPVgETftoEFDf4GMo9hDeZgrPGIYZRULY9rPtLJk2247dL5C9SwiqA0wp3AMcgq9xLs6Ql6IYRMXiv8gGU6mdoeeRtKWimhtTwLRultJVx7CZJc9bfYNs3fJqsb_Wvykrh4UtV6pm4jqPu9jl0oXXaS-9SS5zuz7Ow3iEug5n_Ah1O73HsmVdLD5BFq2RdmXt6nK_tOwLQcxLaVXAG3ToE9hR2AvdY8OQg0N-loRoCoh2bRxVpxB-4cZn8rrUK8IbHPZ3rwj88FsUhy7Qh98GOQVDHGKDF5uXVoIrENED9HIZTUKsuSdWh06lbxfQnlpgMTNlcLZHFL95lkddDsCwWiILXZRS2dzyXZukiTjswC-NHZdUsceiLUA0iDMo3A3CWCbr8AI4N6HPl9YOZgQrUavBzCmZxwQJJlGEBS3ta-oRUIpO8Sutnav_UrYXSl8UcjlcT73ZdYrR2LZZb65LsBQtlLjpmN6gYMXJ9_Kj_bGCM6SvsrDIkt13KQQnaovU3WwK_WunHHkY7YzLFxg4od0e8m7AtdcLz43ZYhRemWlx2V6RDIKNl5op71hUa1B-VIweOXPp9ls9IGD4JD8_UGmcXYVSxl08UUz78c6kvrR-aPxmdK3jyO1n1IkoQbHJNbxnLQcAjMsj8uVftdS6WAXRnSFxnLZ1l2Tni--JbKMu0CEmNDTEsV5fW05LdTNeoAF8IqF1tjYa16dJyo2w_SXRLaVNZTFOyZDjYxOQsJO-MUUaFysbsRMGR3AfpUuTiEu8BTdNUbI0BPqOnLzE-6gjNClPfFVQvuVwkLtMclbnXzPnKGBzLfo0d-zvt09lHh4CY07nOmLL9jboKUaaSN-qhqDW1pW7uDnY5nlWHwJ3Jx96qROhv1GXT0mQd=w404-h316-no?authuser=1',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://lh3.googleusercontent.com/cIJC1FXpj9Ep3nCBHGNr3RqsTwjzDJRqUe3kKm1yzcBkgVGYPDpy8vi7F-A5HgNwFy3xn-50lZrcP36x37Pc6u1hB-NdAImDAuAv6EKEhKpWUFRbugEYB-U1dlLs8YrR4qsqn0U2bjQ72t6EnJGUdiilwa9-IaiwtWQOJLPdkvU2Atzp5iZFC2k6KZ2GSRbPSUtwN6rIEdR8tYzHzTxGutDkuF2pDMTFuDqfse4dFEWcQ-JYdE8NKGt95iBh3vqr6H456QE--xBKWHrZmvWmvqjUFp3LMQsoBgqBq6NTDJg_JM_vek6L9JuqsqOJUjzvhXVN1KnUa-JojwZ3u2ZA7GiYh3uHPm-YF6_YqZqycKeJ40tR2Kjr8db4_95PSktYgleQJkE48nhjXKXJHc9IYulZA_L4cxaUbhH4tcK1oAWfmrAla785taQNQEXl5I9aiRfJRoOsjIXK53fzFTVheTmPRf0eeVhugNi-cJpy8oJSU1lMmd4irAlvW66zJYG9mSOPtczr4Age0Gqszi-iDvOq61i2hGM2HnXmRbY_eFnXVo7SNuuqsaHv82Sqnt28ToInSW5nEA6zLWLPedDKFM3fa209EDFJpNjLGJ7gWnFWdS2ArrP3wd74sFnp11uCrTYjC94qq7ln7ERnLSvDMwASfkmu0cJZyUfK478xexCB0IWT6h9Ys83dZhsMOms5Pi4q-fL7cFRg39rmGvKji4IiIErPnG49vaCoAkuWzqyN2mzP8UnvBqjvNiRGm0woNwMFVYjagGsXbaux-BWbTQorLEdGMYR_6bOcgt3M58MjYkGmDoTM2nKM8Dg54m6Ts4TSdkKZF745ufE6LEMevhNR7B-584uWtJm7Ce-bLvORlLsssVYC62nJHO5JsRI4d71TkfbzsuURepHk-33_nvdCEbBkqko01M0HYlc2Af__o13kNlt3re6fIXHAFaQW1n-y1Viz8VMp=w760-h820-no?authuser=1',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://lh3.googleusercontent.com/ru2EspgJeEeegmot-Sfph8KBDEfFbVDn0yYg0a0dOIy5sPHNzITsICmqNyxuKQ9Zvi3u0QJDd7CU5mpSxIkSywaS3bn-1eyYnOir5yiSulxYBfN5KQqzrHhDLuIRjK_tjS1E2WUyJBsV7CnN23QGBaqyOSzNiIwUkV-qghOEvkY3l1F88y_72BIBOI61Ltooxv8Zvcq5WyEU2DGHn4uiE7xeE8Zhd4vrGpv5XmIsTEPv1eDCDAjRcQibpY9Sv0QsgU2V17AfQfV1OMGhdlg7IVM-bjFHDAnkG2Wrubw0QLwoUWilawVc1IgFo7oJxVGV0xd62ZVclgjGz3LxbMLOtatPq9y3-pfKsT_WRCN4aVxfkmSVjHKY_YMWpOEw7Chdp_28bpcO-jdJeEA5Euq09H3uNAlWLzDns95zWgmmSZdVLxz-1WzuXIXOLeR0l7mCloIjPVssZ581kwd4L6dr7bCLulOQ1Fc2K9-9Yo_qwb-YYw3f3qPPYa0167BaQFRf28SExbn8hWwoG9z3955-nULM3r2KvPM9BP2CfUM0wEUkGm9Pq7-a9H9ZKn46ap7AIioUfSRd-y6DOgzC00BzhSzIHkeF5YjpD1P5TR7i0JRdH-V1l7f0E74GbUitC3NXS2LPNg6sJ9krnoxQlGznddiVJVKW-I0DUC0j69vAqZFZo-0t6ve38oPxLZfBC3RBHtNDfVUEFopC6G977t0CUDh9ymGXqdEDLwj_BeMUOkGqvwfUkiOtl7R8mdOkmBikwWpXyRzy_1_d0QfBzz3t-MSuXj7ii7bLAgGHfVRulK7yqUL3UAIF3TtvescVQj-bWwXso4Ma0OiBCoJmAv8yvX7n7f4WHm32Nci6fegFuqvtjmDDC1HITS1YVnz5W54sjrgg0DuU7X7aoEP1sdn4itpb_9uxsMmcllDH2mClQV5qAt3qwdoKnD1b_exZ4i_bJZOkhDgLLACL=w600-h620-no?authuser=1',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.9),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 8,
                              radius: 15,
                              dotWidth: 8,
                              dotHeight: 16,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(18, 5, 18, 5),
                    child: Text(
                      'Exclusive Offer',
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FindproductWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'See all',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF73B175),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 10, 18, 10),
              child: Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: StreamBuilder<List<CategoriesRecord>>(
                        stream: queryCategoriesRecord(),
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
                          List<CategoriesRecord> listViewCategoriesRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewCategoriesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewCategoriesRecord =
                                  listViewCategoriesRecordList[listViewIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 8, 8, 8),
                                    child: Container(
                                      width: 150,
                                      height: 240,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          color: Color(0x8B57636C),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 10),
                                            child: Image.network(
                                              listViewCategoriesRecord.image!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 8, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  listViewCategoriesRecord
                                                      .name!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  '7 Pcs , Price',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  '₹ 50',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                                Text(
                                                  '₹70',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                      ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 12,
                                                  borderWidth: 1,
                                                  buttonSize: 40,
                                                  fillColor: Color(0xFF73B175),
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 15,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'addtocart pressed ...');
                                                  },
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(18, 5, 18, 5),
                    child: Text(
                      'Best Selling',
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'See all',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF73B175),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 10, 18, 10),
              child: Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: StreamBuilder<List<ProductsRecord>>(
                        stream: queryProductsRecord(),
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
                          List<ProductsRecord> listViewProductsRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewProductsRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewProductsRecord =
                                  listViewProductsRecordList[listViewIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 8, 8, 8),
                                    child: Container(
                                      width: 150,
                                      height: 240,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          color: Color(0x8B57636C),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 10),
                                            child: Image.network(
                                              listViewProductsRecord.image!,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 8, 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  listViewProductsRecord.name!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  listViewProductsRecord.price!
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 12,
                                                  borderWidth: 1,
                                                  buttonSize: 40,
                                                  fillColor: Color(0xFF73B175),
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 15,
                                                  ),
                                                  onPressed: () async {
                                                    setState(() => FFAppState()
                                                        .addToCartItems(
                                                            listViewProductsRecord
                                                                .reference));
                                                  },
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 15),
              child: Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Shop by Category',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: StreamBuilder<List<CategoriesRecord>>(
                            stream: queryCategoriesRecord(),
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
                              List<CategoriesRecord>
                                  listViewCategoriesRecordList = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                itemCount: listViewCategoriesRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewCategoriesRecord =
                                      listViewCategoriesRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 8, 8, 8),
                                    child: Container(
                                      width: 170,
                                      height: 175,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFEF1E4),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Color(0xFFFBC48A),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 15, 15, 15),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                listViewCategoriesRecord.image!,
                                                width: 120,
                                                height: 85,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    listViewCategoriesRecord
                                                        .name!,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 8, 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In at luctus tortor. Vivamus a ultricies.\n\n\n',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 10,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
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
    );
  }
}
