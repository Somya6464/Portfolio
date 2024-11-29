import 'package:demo/Portfolio/desktop/desktop_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      enableScaleWH: () => false,
      minTextAdapt: true,
      splitScreenMode: true,
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        /* initialRoute: '/',
        routes: {
          '/': (context) => const DesktopUi(),
          '/about': (context) => const MAboutUs(),
          '/certificates': (context) => const Mcertificates(),
          '/contact': (context) => const McontactUs(),
        },*/
        home: DesktopUi(),
      ),
    );
  }
}

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: GridView(
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             children: [
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
          
//           child:FaIcon(Icons.local_grocery_store_rounded,size: 50,color: Colors.blue,)
//           //Text('somya',style: GoogleFonts.abyssinicaSil(color: Colors.amber,fontSize: 40),
          
          
//           ),
//         ),
//       );
    
//   }
// }

// Text.rich widget.

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
          
//           child:Text.rich(TextSpan(
//             text: 'Don\'t have an account?  ',
//             style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18),

//             children: [
//               TextSpan(
//                 text: 'Sign Up',
//                 style: GoogleFonts.aBeeZee(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),

//                 recognizer: TapGestureRecognizer()..onTap =() {
//                   print('sign up is pressed');
//                 }
//               )
//             ] 
//           ),
//           )
          
          
          
//           ),
//         ),
//       );
    
//   }
// }


