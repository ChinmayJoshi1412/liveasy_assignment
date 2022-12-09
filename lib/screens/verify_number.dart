import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:liveasy_assignment/screens/otpscreen.dart';
class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String initialcountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
                },
              icon: Icon(Icons.close,
                color: Colors.black,))
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(padding: EdgeInsets.only(top:472),
            child: Image(image: AssetImage('assets/page2bg2.png'),alignment: Alignment.bottomCenter,height: 200,width: 420,fit: BoxFit.fill,),),
          Padding(padding: EdgeInsets.only(top:488),
            child: Image(image: AssetImage('assets/page2bg1.png'),alignment: Alignment.bottomCenter,height: 200,width: 420,fit: BoxFit.fill,),),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 88),
              child: Text('Please enter your mobile number',style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),),
              Padding(padding: EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 32,
                  width: 171,
                  child: Center(
                    child: Text("You'll receive a 4 digit code to verify next.",style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700]
                    ),textAlign: TextAlign.center,),
                  ),
                ),),
              Padding(padding: EdgeInsets.only(top: 32,left: 17,right: 17),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.black)
                  ),
                  child: InternationalPhoneNumberInput(
                    autoValidateMode: AutovalidateMode.onUserInteraction,
                    autoFocus: true,
                    initialValue: number,
                    hintText: 'Mobile Number',
                  onInputChanged: (val){
                    setState(() {
                      number = val;
                    });
    },
                )
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute<void>(
                    builder: (BuildContext context) => VerifyOtp(number.phoneNumber.toString())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 118,vertical: 18),
                    child: Text('CONTINUE',style:GoogleFonts.montserrat(
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
          )
        ],
      ),
    );
  }
}
