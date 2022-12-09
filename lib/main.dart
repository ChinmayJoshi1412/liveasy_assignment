import 'package:flutter/material.dart';
import 'package:liveasy_assignment/screens/language_select.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:liveasy_assignment/screens/language_select.dart';
import 'package:liveasy_assignment/screens/verify_number.dart';
import 'package:liveasy_assignment/screens/otpscreen.dart';
import 'package:liveasy_assignment/screens/profile.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => LanguageSelect(),
      '/verify_number' : (context) => VerifyPhone(),
      '/profile' : (context) => ProfileSelect()
    },
  ));
}