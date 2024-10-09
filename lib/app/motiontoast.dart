import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Motion1 extends StatefulWidget {
  const Motion1({super.key});

  @override
  State<Motion1> createState() => _Motion1State();
}

class _Motion1State extends State<Motion1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 86, 237, 72),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),onPressed: (){
              MotionToast.success(description: Text("your data"),
             width: 350,
             height: 80,
             enableAnimation: true,
             borderRadius: 20,
              ).show(context);
            
            }, child: Text('Correct')),
            
            
          ),
          SizedBox(
            height: 50,
          ),
         ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 234, 69, 57),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),onPressed: (){
              MotionToast.error(description: Text("Warning"),
             width: 350,
             height: 80,
             enableAnimation: true,
             borderRadius: 20,
              ).show(context);
            
            }, child: Text('Error')),
            SizedBox(
            height: 50,
          ),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 42, 177, 230),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),onPressed: (){
              MotionToast.info(description: Text("Warning"),
             width: 350,
             height: 80,
             enableAnimation: true,
             borderRadius: 20,
              ).show(context);
            
            }, child: Text('Info')),
             SizedBox(
            height: 50,
          ),
            
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 226, 228, 55),
                  minimumSize: const Size(300, 60),foregroundColor: Colors.white),onPressed: (){
              MotionToast.warning(description: Text("Warning"),
             width: 350,
             height: 80,
             enableAnimation: true,
             borderRadius: 20,
              ).show(context);
            
            }, child: Text('Warning')) ],
    
      )
    );
  }
}