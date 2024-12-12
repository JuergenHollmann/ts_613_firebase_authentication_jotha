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

  runApp(const MainApp());
}

final authInstance = FirebaseAuth.instance;
Stream<User?> get onAuthStateChanged => authInstance.authStateChanges();

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final authInstance = FirebaseAuth.instance;

  /*--- Login ---*/
  Future<void> loginUser(String email, String password) async {
    try {
      await authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      log("$e");
    }
  }

  /*--- Logout ---*/
  Future<void> logoutUser() async {
    try {
      await authInstance.signOut();
    } catch (e) {
      log("$e");
    }
  }

  String statusText = 'Logge Dich ein mit dem Button "Login"';
  String email = "JOTHA1964@gmail.com";
  String password = "12JOT3";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  statusText,
                  style: const TextStyle(
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
                    authInstance.loginUser(email, password);
                    User? user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      setState(() {
                        statusText =
                            ("Dieser Benutzer ist eingeloggt: ${user.email}");
                      });
                    } else {
                      setState(() {
                        statusText = ("Kein Benutzer eingeloggt.");
                      });
                    }
                    log(authInstance.currentUser.toString());
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
                    authInstance.logoutUser();
                    User? user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      setState(() {
                        statusText =
                            ("Es ist aktuell KEIN Benutzer eingeloggt ...");
                      });
                    } else {
                      setState(() {
                        statusText = ("Kein Benutzer eingeloggt.");
                      });
                    }
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
        ),
      ),
    );
  }
}

extension on FirebaseAuth {
  void loginUser(String email, String password) {}
  void logoutUser() {}
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
√ Wenn auf den einen Button geklickt wird, dann soll ein User mit hardgekodeten Werten eingeloggt werden.
√ Es soll im Textfeld angezeigt werden, dass der Benutzer eingeloggt ist.
√ Der andere Button soll ausloggen.
√ Wie sieht deine App und dein Code aus? Kopiere den Code und einen Screenshot in das Antwortfeld.
*/
