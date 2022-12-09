import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liveasy_assignment/screens/verify_number.dart';
class LanguageSelect extends StatefulWidget {
  const LanguageSelect({Key? key}) : super(key: key);

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  List <DropdownMenuItem<String>> dropdownmenu = [
    DropdownMenuItem(child: Text('English') , value: 'English',)
  ];
  String dropdown_value = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:520),
                    child: Image(image: AssetImage('assets/page1bg1.png'),alignment: Alignment.bottomCenter,height: 200,width: 420,fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:526),
                    child: Image(image: AssetImage('assets/page1bg2.png'),alignment: Alignment.bottomCenter,height: 200,width: 420,fit: BoxFit.fill,),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 111,),
                        child: Image(image: AssetImage('assets/pg1.png'),height: 56,width: 56,)),
                      Padding(padding: EdgeInsets.only(top: 42),
                        child:Text('Please select your Language',style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),),
                      Padding(padding: EdgeInsets.only(top:11),
                      child: SizedBox(
                        height: 30,
                        width: 184,
                        child: Center(
                          child: Text('You can change the language at any anytime',style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700]
                          ),textAlign: TextAlign.center,),
                        ),
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 24,left: 82,right: 82),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8,),
                              child: DropdownButtonFormField(items:dropdownmenu, onChanged: (val){
                                dropdown_value = val.toString();
                              },
                              value: dropdown_value,
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.black12,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400

                                ),
                                border: InputBorder.none
                              ),),
                            ),
                          ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/verify_number');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 85,vertical: 12),
                          child: Text('NEXT',style:GoogleFonts.montserrat(
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

          ),
        );
  }
}
