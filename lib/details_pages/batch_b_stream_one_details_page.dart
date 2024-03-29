import 'package:cached_network_image/cached_network_image.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnancialinclusioncds2020/notifier/batch_b_stream_one_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

String callFIRST = "tel:+234";
String smsFIRST = "sms:+234";
String mailFIRST = "mailto:";
String mailSECOND = "?subject=Hello ";
String urlTwitter = "https://twitter.com/";
String urlFacebook = "https://fb.com/";
String urlInstagram = "https://www.instagram.com/";
String urlLinkedIn = "https://www.linkedin.com/";

String cdsName = "Financial Inclusion CDS";

String reachDetails = "Reach";
String autoBioDetails = "AutoBio";

String callButton = "Call";
String messageButton = "Send a Message";
String emailButton = "Send an Email";
String twitterButton = "My Twitter";
String instagramButton = "My Instagram";
String linkedInButton = "My LinkedIn";
String facebookButton = "My Facebook";

String autobiographyTitle = "Autobiography\n";
String nicknameTitle = "My Nickname\n";
String bestMomentTitle = "Best Moment in NYSC\n";
String worstMomentTitle = "Worst Moment in NYSC\n";
String ppaNameTitle = "PPA Name\n";
String ppaLocationTitle = "PPA Location\n";
String ppaAssignmentTitle = "PPA Assignment\n";
String almaMaterTitle = "Alma Mater\n";
String courseOfStudyTitle = "Course of Study\n";
String academicQualificationTitle = "Academic Qualification\n";
String graduationYearTitle = "Graduation Year\n";
String cdsExecutiveTitle = "CDS Executive\n";
String cdsExecutivePositionTitle = "CDS Executive Position\n";
String whatsNextAfterTitle = "What's next after NYSC\n";
String currentLivingStateTitle = "State of Living\n";
String stateOfOriginTitle = "State of Origin\n";
String dobTitle = "Date of Birth\n";
String nyscBatchTitle = "NYSC Batch\n";
String occupationTitle = "Occupation\n";
String hobbiesTitle = "Hobbies\n";
String philosophyTitle = "Philosophy about Life\n";
String droplineTitle = "Dropline to My Junior $cdsName Colleagues\n";

BatchBStreamOneNotifier batchBStreamOneNotifier;

Map<int, Widget> userBIO;

var _academicQualification;
var _almaMater;
var _autoBio;
var _bestMoment;
var _courseOfStudy;
var _dob;
var _email;
var _facebook;
var _graduationYear;
var _hobbies;
var _instagram;
var _linkedIn;
var _myDropline;
var _name;
var _nickname;
var _philosophy;
var _phone;
var _ppaAssignment;
var _cdsExecutive;
var _cdsExecutivePosition;
var _ppaLocation;
var _ppaName;
var _twitter;
//var _whatsNext;
var _stateLiving;
var _originState;
var _worstMoment;
var _nyscBatch;
var _occupation;

class BatchBStreamOneDetailsPage extends StatefulWidget {
  @override
  _BatchBStreamOneDetailsPageState createState() =>
      _BatchBStreamOneDetailsPageState();
}

class _BatchBStreamOneDetailsPageState
    extends State<BatchBStreamOneDetailsPage> {
  ConfettiController _confettiController;

  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Can't Launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    batchBStreamOneNotifier =
        Provider.of<BatchBStreamOneNotifier>(context, listen: true);

    return ConfettiWidget(
      confettiController: _confettiController,
      blastDirectionality: BlastDirectionality.explosive,
      shouldLoop: false,
      colors: [
        Colors.green,
        Colors.blue,
        Colors.pink,
        Colors.orange,
        Colors.purple,
        Colors.brown,
        Colors.white,
        Colors.blueGrey,
        Colors.redAccent,
        Colors.teal,
        Colors.indigoAccent,
        Colors.cyan,
      ],
      child: Scaffold(
        backgroundColor: Color.fromRGBO(95, 72, 86, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            batchBStreamOneNotifier.currentBatchBStreamOne.nickname,
            style: GoogleFonts.sanchez(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          elevation: 10,
          backgroundColor: Color.fromRGBO(95, 62, 86, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Tooltip(
                  child: Container(
                    width: 400,
                    height: 520,
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CachedNetworkImage(
                        imageUrl: batchBStreamOneNotifier.currentBatchBStreamOne.image,
                        fit: BoxFit.cover,
                        alignment: Alignment(0, -1),
                        placeholder: (context, url) => CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(MdiIcons.alertRhombus),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  message: batchBStreamOneNotifier.currentBatchBStreamOne.name),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Color.fromRGBO(95, 62, 86, 1).withOpacity(0.20),
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Color.fromRGBO(95, 62, 86, 1).withOpacity(0.70),
                          width: 4.0,
                          style: BorderStyle.solid),
                    ),
                    margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),

                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              batchBStreamOneNotifier.currentBatchBStreamOne.name
                                  .toUpperCase(),
                              style: GoogleFonts.blinker(
                                  color: Color.fromRGBO(95, 72, 86, 1),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            (() {
                              if (batchBStreamOneNotifier
                                      .currentBatchBStreamOne.cdsExecutive ==
                                  "Yes") {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(width: 10),
                                    Icon(
                                      MdiIcons.checkboxMarkedCircle,
                                      color: Color.fromRGBO(95, 72, 86, 1),
                                    ),
                                  ],
                                );
                              } else {
                                return Visibility(
                                  visible: !_isVisible,
                                  child: Icon(
                                    MdiIcons.checkboxMarkedCircle,
                                    color: Color.fromRGBO(95, 72, 86, 1),
                                  ),
                                );
                              }
                            }()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.white,
                margin: EdgeInsets.all(10),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 8.0, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: CupertinoSlidingSegmentedControl<int>(
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                          thumbColor: Colors.white,
                          backgroundColor:
                              Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          children: {
                            0: Text(
                              reachDetails,
                              style: GoogleFonts.sacramento(
                                  color: Color.fromRGBO(95, 62, 86, 1),
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            ),
                            1: Text(
                              autoBioDetails,
                              style: GoogleFonts.sacramento(
                                color: Color.fromRGBO(95, 62, 86, 1),
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          },
                          onValueChanged: (int val) {
                            setState(() {
                              sharedValue = val;
                            });
                          },
                          groupValue: sharedValue,
                        ),
                      ),
                      userBIO[sharedValue],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int sharedValue = 0;

  initState() {
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 35));
    _confettiController.play();

    BatchBStreamOneNotifier batchBStreamOneNotifier =
        Provider.of<BatchBStreamOneNotifier>(context, listen: false);

    _autoBio = batchBStreamOneNotifier.currentBatchBStreamOne.autoBio;
    _bestMoment = batchBStreamOneNotifier.currentBatchBStreamOne.bestMoment;
    _courseOfStudy =
        batchBStreamOneNotifier.currentBatchBStreamOne.courseOfStudy;
    _graduationYear =
        batchBStreamOneNotifier.currentBatchBStreamOne.graduationYear;
    _linkedIn = batchBStreamOneNotifier.currentBatchBStreamOne.linkedIn;
    _ppaAssignment =
        batchBStreamOneNotifier.currentBatchBStreamOne.ppaAssignment;
    _cdsExecutive = batchBStreamOneNotifier.currentBatchBStreamOne.cdsExecutive;
    _cdsExecutivePosition =
        batchBStreamOneNotifier.currentBatchBStreamOne.cdsExecutivePosition;
    _ppaLocation = batchBStreamOneNotifier.currentBatchBStreamOne.ppaLocation;
    _ppaName = batchBStreamOneNotifier.currentBatchBStreamOne.ppaName;
    _originState = batchBStreamOneNotifier.currentBatchBStreamOne.stateOfOrigin;
//    _whatsNext = batchBStreamOneNotifier.currentBatchBStreamOne.whatsNext;
    _stateLiving = batchBStreamOneNotifier.currentBatchBStreamOne.whereYouLive;
    _bestMoment = batchBStreamOneNotifier.currentBatchBStreamOne.bestMoment;
    _dob = batchBStreamOneNotifier.currentBatchBStreamOne.dob;
    _academicQualification =
        batchBStreamOneNotifier.currentBatchBStreamOne.academicQualification;
    _almaMater = batchBStreamOneNotifier.currentBatchBStreamOne.almaMater;
    _email = batchBStreamOneNotifier.currentBatchBStreamOne.email;
    _facebook = batchBStreamOneNotifier.currentBatchBStreamOne.facebook;
    _hobbies = batchBStreamOneNotifier.currentBatchBStreamOne.hobbies;
    _instagram = batchBStreamOneNotifier.currentBatchBStreamOne.instagram;
    _myDropline = batchBStreamOneNotifier.currentBatchBStreamOne.myDropline;
    _name = batchBStreamOneNotifier.currentBatchBStreamOne.name;
    _nickname = batchBStreamOneNotifier.currentBatchBStreamOne.nickname;
    _philosophy = batchBStreamOneNotifier.currentBatchBStreamOne.philosophy;
    _phone = batchBStreamOneNotifier.currentBatchBStreamOne.phone;
    _twitter = batchBStreamOneNotifier.currentBatchBStreamOne.twitter;
    _worstMoment = batchBStreamOneNotifier.currentBatchBStreamOne.worstMoment;
    _nyscBatch = batchBStreamOneNotifier.currentBatchBStreamOne.nyscBatch;
    _occupation = batchBStreamOneNotifier.currentBatchBStreamOne.occupation;

    userBIO = <int, Widget>{
      0: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            (() {
              if (_phone.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.dialpad,
                        color: Colors.white,
                      ),
                      label: Text(callButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(callFIRST + _phone);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.dialpad,
                          color: Colors.white,
                        ),
                        label: Text(callButton,
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(callFIRST + _phone);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_phone.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.message,
                        color: Colors.white,
                      ),
                      label: Text(messageButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(smsFIRST + _phone);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.message,
                          color: Colors.white,
                        ),
                        label: Text(messageButton,
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(smsFIRST + _phone);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_email.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.gmail,
                        color: Colors.white,
                      ),
                      label: Text(emailButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(mailFIRST + _email + mailSECOND + _name);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.gmail,
                          color: Colors.white,
                        ),
                        label: Text(emailButton,
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(mailFIRST + _email + mailSECOND + _name);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_twitter.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.twitterCircle,
                        color: Colors.white,
                      ),
                      label: Text(twitterButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(urlTwitter + _twitter);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.twitterCircle,
                          color: Colors.white,
                        ),
                        label: Text(twitterButton,
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(urlTwitter + _twitter);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_instagram.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.instagram,
                        color: Colors.white,
                      ),
                      label: Text(instagramButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300)),
                      onPressed: () {
                        launchURL(urlInstagram + _instagram);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.instagram,
                          color: Colors.white,
                        ),
                        label: Text(instagramButton,
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300)),
                        onPressed: () {
                          launchURL(urlInstagram + _instagram);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_facebook.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.facebook,
                        color: Colors.white,
                      ),
                      label: Text(
                        facebookButton,
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      onPressed: () {
                        launchURL(urlFacebook + _facebook);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.facebook,
                          color: Colors.white,
                        ),
                        label: Text(
                          facebookButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        onPressed: () {
                          launchURL(urlFacebook + _facebook);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
            (() {
              if (_linkedIn.toString().isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    splashColor: Colors.white,
                    child: RaisedButton.icon(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      color: Color.fromRGBO(95, 62, 86, 1),
                      icon: new Icon(
                        MdiIcons.linkedinBox,
                        color: Colors.white,
                      ),
                      label: Text(
                        linkedInButton,
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      onPressed: () {
                        launchURL(urlLinkedIn + _linkedIn);
                      },
                    ),
                  ),
                );
              } else {
                return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: RaisedButton.icon(
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        color: Color.fromRGBO(95, 62, 86, 1),
                        icon: new Icon(
                          MdiIcons.linkedinBox,
                          color: Colors.white,
                        ),
                        label: Text(
                          linkedInButton,
                          style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        onPressed: () {
                          launchURL(urlLinkedIn + _linkedIn);
                        },
                      ),
                    ),
                  ),
                );
              }
            }()),
          ],
        ),
      ),
      1: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          (() {
            if (_autoBio.toString().isNotEmpty) {
              return Container(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Color.fromRGBO(95, 62, 86, 1),
                    onTap: () {},
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 15, top: 15, left: 25),
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: autobiographyTitle,
                                style: GoogleFonts.aBeeZee(
                                  color: Color.fromRGBO(95, 62, 86, 1),
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: ' ' + _autoBio,
                                style: GoogleFonts.trykker(
                                  color: Color.fromRGBO(95, 62, 86, 1),
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Color.fromRGBO(95, 62, 86, 1),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 15, left: 25),
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: autobiographyTitle,
                                    style: GoogleFonts.aBeeZee(
                                      color: Color.fromRGBO(95, 62, 86, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text: ' ' + _autoBio,
                                    style: GoogleFonts.trykker(
                                      color: Color.fromRGBO(95, 62, 86, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                        borderRadius: new BorderRadius.circular(10)),
                  ));
            }
          }()),

          (() {
            if (_nickname.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: nicknameTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _nickname,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: nicknameTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _nickname,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_bestMoment.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: bestMomentTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _bestMoment,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: bestMomentTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _bestMoment,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_worstMoment.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: worstMomentTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _worstMoment,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: worstMomentTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _worstMoment,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_ppaName.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ppaNameTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _ppaName,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ppaNameTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _ppaName,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_ppaLocation.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ppaLocationTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _ppaLocation,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ppaLocationTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _ppaLocation,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_ppaAssignment.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ppaAssignmentTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _ppaAssignment,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ppaAssignmentTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _ppaAssignment,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_almaMater.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: almaMaterTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _almaMater,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: almaMaterTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _almaMater,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_courseOfStudy.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: courseOfStudyTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _courseOfStudy,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: courseOfStudyTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _courseOfStudy,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_academicQualification.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: academicQualificationTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _academicQualification,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: academicQualificationTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _academicQualification,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_graduationYear.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: graduationYearTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _graduationYear,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: graduationYearTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _graduationYear,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_cdsExecutive.toString() == "Yes") {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: cdsExecutivePositionTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _cdsExecutivePosition,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: cdsExecutivePositionTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _cdsExecutivePosition,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),
//          Padding(
//            padding: const EdgeInsets.only(top: 20.0),
//            child: Container(
//              child: Material(
//                color: Colors.transparent,
//                child: InkWell(
//                  splashColor: Color.fromRGBO(95, 62, 86, 1),
//                  onTap: () {},
//                  child: Padding(
//                    padding: const EdgeInsets.only(bottom: 15, top: 15, left: 25),
//                    child: Text.rich(
//                      TextSpan(
//                        children: <TextSpan>[
//                          TextSpan(
//                              text: whatsNextAfterTitle,
//                              style:  GoogleFonts.aBeeZee(
//                                color: Color.fromRGBO(95, 62, 86, 1),
//                                fontSize: 19,
//                                fontWeight: FontWeight.bold,
//                              )
//                          ),
//                          TextSpan(
//                              text: ' '+_whatsNext,
//                              style: GoogleFonts.trykker(
//                                color: Color.fromRGBO(95, 62, 86, 1),
//                                fontSize: 19,
//                                fontWeight: FontWeight.w300,
//                              )
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//
//              decoration: BoxDecoration(
//                  color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
//                  borderRadius: new BorderRadius.circular(10)
//              ),
//            ),
//          ),
          (() {
            if (_nyscBatch.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: nyscBatchTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _nyscBatch,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: nyscBatchTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _nyscBatch,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_occupation.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: occupationTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _occupation,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: occupationTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _occupation,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_dob.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: dobTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _dob,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: dobTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _dob,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_originState.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: stateOfOriginTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _originState,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: stateOfOriginTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _originState,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_stateLiving.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: currentLivingStateTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _stateLiving,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: currentLivingStateTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _stateLiving,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_hobbies.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: hobbiesTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _hobbies,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: hobbiesTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _hobbies,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_philosophy.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: philosophyTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _philosophy,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: philosophyTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _philosophy,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),

          (() {
            if (_myDropline.toString().isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color.fromRGBO(95, 62, 86, 1),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 25),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: droplineTitle,
                                  style: GoogleFonts.aBeeZee(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' ' + _myDropline,
                                  style: GoogleFonts.trykker(
                                    color: Color.fromRGBO(95, 62, 86, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                      borderRadius: new BorderRadius.circular(10)),
                ),
              );
            } else {
              return Visibility(
                  visible: !_isVisible,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Color.fromRGBO(95, 62, 86, 1),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, top: 15, left: 25),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: droplineTitle,
                                      style: GoogleFonts.aBeeZee(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' ' + _myDropline,
                                      style: GoogleFonts.trykker(
                                        color: Color.fromRGBO(95, 62, 86, 1),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(95, 62, 86, 1).withAlpha(50),
                          borderRadius: new BorderRadius.circular(10)),
                    ),
                  ));
            }
          }()),
        ],
      ),
    };
    super.initState();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
}
