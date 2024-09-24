import 'package:flutter/material.dart';
import 'package:prova/views/WelcomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prova',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/WelcomeView': (context) => const WelcomeView(), 
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Login'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const Text(
              'Login',
              style: TextStyle(color: Colors.blue, fontSize: 45),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Email'),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Verifique Seu Email';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                label: const Text('Senha'),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Verifique sua Senha';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text(
                "Entrar",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/WelcomeView');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
