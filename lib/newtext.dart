import 'package:flutter/material.dart';

class Newt extends StatefulWidget {
  const Newt({super.key});

  @override
  State<Newt> createState() => _NewtState();
}

class _NewtState extends State<Newt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
            ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'your text',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),
                  onPressed: (){}, child: const Text('Save')),
                  TextButton(onPressed: (){}, child: const Text('pass')),
                  OutlinedButton(onPressed: (){}, child: const Text("Outlined")),

                  IconButton(onPressed: (){}, icon: const Icon(Icons.save)),
                  FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),)
          ],
        ),
      ));
  }
}