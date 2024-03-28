import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart  ';

void main() {
  runApp(MyApp());
}

// Stateless vs Stateful

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  int counter = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("$counter"),
            const Text("Hola"),
            const Text("Hola"),
            Image.network(
              "https://images.pexels.com/photos/20767767/pexels-photo-20767767/free-photo-of-flores-jardin-hoja-primavera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
            // Image.asset("...")
            // Image(
            //   // image: NetworkImage("https://images.pexels.com/photos/20767767/pexels-photo-20767767/free-photo-of-flores-jardin-hoja-primavera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            //   image: AssetImage("..."),
            // ),
            ElevatedButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: const Text('Enviar mensaje'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Holaaa",
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              margin: const EdgeInsets.all(20),
              child: const Text("Container"),
            ),
            ItemMenu(),
            Mandarina(),
          ],
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hola"),
    );
  }
}

class Mandarina extends StatefulWidget {
  const Mandarina({super.key});
  @override
  State<Mandarina> createState() => _MandarinaState();
}

class _MandarinaState extends State<Mandarina> {
  @override
  Widget build(BuildContext context) {
    return Text("Holasss");
  }
}
