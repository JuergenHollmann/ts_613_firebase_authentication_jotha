import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MainApp());
}

final authInstance = FirebaseAuth.instance;

class MainApp extends StatefulWidget {
  MainApp({super.key});

  final authInstance = FirebaseAuth.instance;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    // final user = repository.getUser(); // hier gibt es kein repo
    //const user = "JOTHA1964@gmail.com";

    return MaterialApp(
      home: Scaffold(
        body: 
        
        
        
        
        
        // StreamBuilder(
        //   stream: authInstance.onAuthStateChanged,

        //   // stream: repository.onAuthStateChanged, //O
        //   builder: (context, snapshot) {
        //     // If logged in
        //     if (snapshot.hasData) {
        //       // show HomeScreen,
        //       // return HomeScreen(repository: repository); //O
        //       const Text("Ja");

        //       // if not logged in
        //     } else {
        //       // show Login
        //       // return LoginScreen(repository: repository); //O
        //       const Text("Nein");
        //     }
        //   },

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Center(child: Text("Logged in as ${user?.email}")),
                // const Center(child: Text("Logged in as $user")),

                const Text(
                  'Der Benutzer ist NICHT eingeloggt',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Einen User mit hardgecodeten Werten einloggen:
                    log("Login wurde angeklickt");
                    String mail = "JOTHA1964@gmail.com";
                    log("E-Mail: $mail");
                    String password = "12JOT3";
                    log("Passwort: $password");
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    log("Logout wurde angeklickt");
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),





      //   ),
      ),
    );
  }
}

// extension on FirebaseAuth {
//   get onAuthStateChanged => null;
// }

/*--- Login ---*/
Future<void> loginUser(String email, String password) async {
  try {
    log("1 ---> E-Mail: $email");

    await authInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
      //log("$user");
      //Text("Logged in as $user")),
    );
  } catch (e) {
    log("$e");
  }
  log("2 ---> E-Mail: $email");
}

/*--- Logout ---*/
Future<void> logoutUser() async {
  try {
    await authInstance.signOut();
  } catch (e) {
    log("$e");
  }
}

/*
Aufgabe 1: Firebase Authentication
√ Erstelle eine neue Flutter-App für die Verwendung von Firebase Authentication.
√ Erstelle dann ein Firebase-Projekt für diese App.
√ Verbinde Firebase durch flutterfire configure mit der App und konfiguriere Firebase Auth.
√ Hinweis: Das Einrichten selbst genügt für diese Aufgabe.
√ Die Implementierung von Login, Registrierung und Weiterleitung in der App ist nicht gefordert.
√ Pushe deine Änderungen dann auf GitHub und kopiere den Link zu deinem GitHub-Repository in das Antwortfeld.
√ Deine Antwort: https://github.com/JuergenHollmann/ts_613_firebase_authentication_jotha

Aufgabe 2: Simpler Login
√ Baue ein Textfeld und zwei Buttons in deine App ein.
Wenn auf den einen Button geklickt wird, dann soll ein User mit hardgekodeten Werten eingeloggt werden.
Es soll im Textfeld angezeigt werden, dass der Benutzer eingeloggt ist.
Der andere Button soll ausloggen.

Wie sieht deine App und dein Code aus? Kopiere den Code und einen Screenshot in das Antwortfeld.

*/
