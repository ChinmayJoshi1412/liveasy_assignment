import 'dart:ffi';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
class VerifyOtp extends StatefulWidget {
  String number;
  VerifyOtp(this.number);
  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationidrecieved = "";
  int otp = 0;
  String user_otp="";
  int? _resendtoken;
  List <TextEditingController> n = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),];
  void verifyNumber()
  {
    auth.verifyPhoneNumber(
        phoneNumber: widget.number,
        verificationCompleted: (PhoneAuthCredential credential)async{
          print('OTP sent');
          },
        verificationFailed: (FirebaseAuthException exception){
          print(exception.message);
        },
        codeSent: (String verificationID,int? resendtoken){
          verificationidrecieved = verificationID;
          _resendtoken = resendtoken;
          setState(() {});
        },timeout: Duration(seconds: 25),
        forceResendingToken: _resendtoken,
        codeAutoRetrievalTimeout: (String verificationID){
          verificationidrecieved = verificationID;
        });
  }
  @override
  void initState() {
    verifyNumber();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 88),
            child: Text('Verify Phone',style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),),
          Padding(padding: EdgeInsets.only(top: 8),
            child: SizedBox(
              height: 32,
              width: 200,
              child: Center(
                child: Text("Code is sent to ${widget.number}",style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700]
                ),textAlign: TextAlign.center,),
              ),
            ),),
          Padding(
            padding: const EdgeInsets.only(top:24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[0],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                        if(val.length == 1)
                          {
                            FocusScope.of(context).nextFocus();
                          }
                      },
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600
                        ),
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[1],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                        if(val.length == 1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          ),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[2],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                        if(val.length == 1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          ),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[3],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                        if(val.length == 1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          ),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[4],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                        if(val.length == 1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          ),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.lightBlue[100],
                    child: TextField(
                      controller: n[5],
                      onChanged: (val){
                        setState(() {
                          user_otp = user_otp + val;
                        });
                      },
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          ),
                          border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: RichText(text: TextSpan(
                children:[
                  TextSpan(
                    text: "Didn't receive the code? ",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700]
                    )
                  ),
                  TextSpan(
                    text: "Request again",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                  ),
                  recognizer: TapGestureRecognizer()
                      ..onTap = (){
                   verifyNumber();
                   Fluttertoast.showToast(msg: 'OTP sent again');
                      })
                ])),
          ),
          Padding(padding: EdgeInsets.only(top: 24,left: 16,right: 16),
            child: TextButton(
              onPressed: ()async{
                print(user_otp);
                try {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationidrecieved, smsCode: user_otp);
                  UserCredential result = await auth.signInWithCredential(credential);
                  Navigator.popAndPushNamed(context,'/profile');
                }
                on FirebaseAuthException catch (e)
                {
                  Fluttertoast.showToast(msg: 'Invalid OTP, request again');
                  setState(() {
                    for(var i in n)
                      {
                        i.clear();
                      }
                    user_otp = "";
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64,vertical: 18),
                child: Text('VERIFY AND CONTINUE',style:GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white
                )
                ),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF2E3B62))),
            ),)
        ],
      ),
    );
  }
}
