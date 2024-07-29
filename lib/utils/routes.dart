
import 'package:chat2/screen/chat/view/chat_screen.dart';
import 'package:chat2/screen/home/view/home_screen.dart';
import 'package:chat2/screen/login/view/signup_screen.dart';
import 'package:chat2/screen/profile/view/profile_screen.dart';
import 'package:chat2/screen/splash/view/splash_screen.dart';
import 'package:chat2/screen/userdetail/view/userdetail_screen.dart';
import 'package:chat2/screen/users/view/users_screen.dart';
import 'package:flutter/material.dart';

import '../screen/intro/view/intro_screen.dart';
import '../screen/login/view/signin_screen.dart';

Map<String,WidgetBuilder>app_routes={
  '/':(context)=>SplashScreen(),
  'intro':(context)=>const IntroScreen(),
  'signup':(context)=>const SignupScreen(),
  'signin':(context)=>const SigninScreen(),
  'home':(context)=>const HomeScreen(),
  'profile':(context)=>const ProfileScreen(),
  'user':(context)=>const UsersScreen(),
  'chat':(context)=>const ChatScreen(),
  'userdetail':(context)=>const UserdetailScreen(),
};