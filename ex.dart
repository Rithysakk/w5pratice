import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: CustomButtonPage(),
    ));

class CustomButtonPage extends StatelessWidget {
  const CustomButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
          ],
        ),
      ),
    );
  }
}

// Each button manages its own state
class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Center(
          child: Text(isSelected ? "Selected" : "Not selected"),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Favorite cards'),
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(width: .5, color: Colors.black),
//                 ),
//               ),
//               padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   const Expanded(
//                     flex:7,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'title',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         SizedBox(height: 10.0),
//                         Text('description'),
//                       ],
//                     ),
//                   ),

                
//                   const SelectableIcon(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SelectableIcon extends StatefulWidget {
//   const SelectableIcon({super.key});

//   @override
//   State<SelectableIcon> createState() => _SelectableIconState();
// }

// class _SelectableIconState extends State<SelectableIcon> {
//   bool isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           isSelected = !isSelected;
//         });
//       },
//       icon: Icon(
//         isSelected ? Icons.favorite : Icons.favorite_border,
//         color: isSelected ? Colors.red : Colors.grey,
//       ),
//     );
//   }
// }