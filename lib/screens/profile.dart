import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfileSelect extends StatefulWidget {
  const ProfileSelect({Key? key}) : super(key: key);

  @override
  State<ProfileSelect> createState() => _ProfileSelectState();
}
enum Profile{shipper,transporter}
class _ProfileSelectState extends State<ProfileSelect> {
  Profile? p;
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 88),
            child: Text('Please select your profile',style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),),
          Padding(padding: EdgeInsets.only(top:26,left: 16,right: 16),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: EdgeInsets.only(top:16,bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Radio(
                      activeColor: Colors.black,
                        value: Profile.shipper,
                        groupValue: p,
                        onChanged: (val){
                          setState(() {
                            p = val;
                          });
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Image(image: AssetImage('assets/shipper.png'),width: 40,height: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shipper',style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),),
                        SizedBox(height: 8,),
                        SizedBox(
                          width: 160,
                          height: 28,
                          child: Text('Lorem ipsum dolor sit amet, \nconsectetur adipiscing',
                            style: GoogleFonts.roboto(
                            fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ),
          Padding(
              padding: EdgeInsets.only(top:26,left: 16,right: 16),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:16,bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                              activeColor: Colors.black,
                              value: Profile.transporter,
                              groupValue: p,
                              onChanged: (val){
                                setState(() {
                                  p = val;
                                });
                              }),
                        ),
                        Padding(
                          padding:EdgeInsets.only(left: 10),
                          child: Image(image: AssetImage('assets/transporter.png'),width: 40,height: 40,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Transporter',style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400
                              ),),
                              SizedBox(height: 8,),
                              SizedBox(
                                width: 160,
                                height: 28,
                                child: Text('Lorem ipsum dolor sit amet, \nconsectetur adipiscing',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              )
          ),
          Padding(padding: EdgeInsets.only(top: 24),
            child: TextButton(
              onPressed: (){},
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
    );
  }
}
