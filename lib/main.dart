import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teste Tania',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Teste Tania Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
      radius: 150,
      backgroundImage: NetworkImage(
          "https://scontent.fcpq9-1.fna.fbcdn.net/v/t1.6435-9/41508758_1746182372170867_4959425193689743360_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3R3zAHMgQn8AX8bcqnd&tn=CnYWn_Y6VwCoLaO9&_nc_ht=scontent.fcpq9-1.fna&oh=00_AfBS07LMClRDjxp97exz60e0bjqBF2qw80PTpheAUttg_A&oe=63DB0ECC"));

  final nome = const Text(
    'Tania Basso', 
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon:  const Icon(Icons.phone),
    iconSize: 50,
    onPressed: () {
      launchUrl(Uri(scheme:'tel',path: '996379373'));
    }
  );
    final botaoEmail = IconButton(
    color: Colors.blue,
    icon:  const Icon(Icons.mail),
    iconSize: 50,
    onPressed: () {
      
    }
  ); 

final botaoSms = IconButton(
    color: Colors.blue,
    icon:  const Icon(Icons.sms),
    iconSize: 50,
    onPressed: () {
      
    }
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            foto, 
            nome, 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                botaoTelefone,
                botaoEmail,
                botaoSms
              ],)
          ],
        )
    )
    );
  }
}
