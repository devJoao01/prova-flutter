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
  final _formKey = GlobalKey<FormState>();  
  final TextEditingController _usernameController = TextEditingController();  
  final TextEditingController _passwordController = TextEditingController();  

  void _incrementCounter() {  
    setState(() {});  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text(widget.title),  
      ),  
      body: Form(  
        key: _formKey,  
        child: Padding(  
          padding: const EdgeInsets.all(10.0),  
          child: Column(  
            children: [  
              const Text(  
                'Login',  
                style: TextStyle(color: Colors.blue, fontSize: 45),  
              ),  
              TextFormField(  
                controller: _usernameController,  
                decoration: InputDecoration(  
                  label: const Text('Email'),  
                  prefixIcon: const Icon(Icons.person),  
                  border: OutlineInputBorder(  
                    borderRadius: BorderRadius.circular(10),  
                  ),  
                ),  
                validator: (value) {  
                  if (value == null || value.isEmpty) {  
                    return 'Verfique seu Email';  
                  }  
                  return null;  
                },  
              ),  
              const SizedBox(height: 10),  
              TextFormField(  
                controller: _passwordController,  
                obscureText: true,  
                decoration: InputDecoration(  
                  label: const Text('Senha'),  
                  prefixIcon: const Icon(Icons.lock),  
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
                child: const Text("Entrar",  
                    style: TextStyle(fontSize: 18, color: Colors.black)),  
                onPressed: () {  
                    Navigator.pushNamed(context, '/WelcomeView');  
                },  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  