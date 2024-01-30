import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_news_app/bloc/news_bloc.dart';
import 'package:flutter_news_app/login.dart';
import 'package:flutter_news_app/register.dart';
import 'package:flutter_news_app/view/splash_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(create: (BuildContext context) => NewsBloc(),),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: 
        const MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      //'google_sign_in': (context) => const Home(),
      'splash_screen': (context) => const SplashScreen(),
      }
      ),
    );
  }
}



const spinkit = SpinKitChasingDots(
  color: Colors.blue,
  size: 40.0,
);



