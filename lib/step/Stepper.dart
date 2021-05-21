import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_app/home/Home.dart';

class StepTest extends StatefulWidget {
  @override
  StepperFul createState() => StepperFul();
}

class StepperFul extends State<StatefulWidget> {
  int cur_step = 0;

  List<Step> my_steps = [
    Step(
        // Title of the Step
        title: Text("Step 1"),
        // Content, it can be any widget here. Using basic Text for this example
        state: StepState.editing,
        content: Text("Hello!"),
        isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("World!"),
        // You can change the style of the step icon i.e number, editing, etc.
        state: StepState.editing,
        isActive: true),
    Step(title: Text("Step 3"), content: Text("Hello World!"), isActive: true),
  ];

  void _changeStep(int nextStep) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () => {}),
          title: Text("DDDDDD"),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()))
                    }),
            IconButton(
                icon: Icon(Icons.ac_unit_outlined),
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()))
                    }),
          ],
        ),
        body: Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
          child: Row(
            children: [
              Text("GGGGG", style: TextStyle(fontSize: 25.0)),
              Text("GGGGG", style: TextStyle(fontSize: 25.0)),
            ],
          ),
          // child: Center(
          //   child: Text(
          //     "GGGGG",
          //     style: TextStyle(fontSize: 25.0),
          //   ),
          // )
          // Stepper(
          //   currentStep: this.cur_step,
          //   steps: my_steps,
          //   type: StepperType.vertical,
          //   onStepTapped: (step) {
          //     setState(() {
          //       cur_step = step;
          //     });
          //   },
          //   onStepCancel: () {
          //     setState(() {
          //       if (cur_step > 0) {
          //         cur_step = cur_step - 1;
          //       }
          //     });
          //   },
          //   onStepContinue: () {
          //     setState(() {
          //       if (cur_step < my_steps.length - 1) {
          //         cur_step = cur_step + 1;
          //       } else {
          //         cur_step = 0;
          //       }
          //     });
          //   },
        ) // ))
        );
  }
}
