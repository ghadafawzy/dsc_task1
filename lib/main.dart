import 'package:dsc_task1/component/button.dart';
import 'package:dsc_task1/component/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
                 child: Container(
             width: MediaQuery.of(context).size.width,
               height: 200,
               color: Colors.deepPurple,child: Center(child: Text("Register",style: TextStyle(fontSize: 25,color: Colors.white),)),),
               clipper: CustomPath(),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
              child: Column(children: [
                SizedBox(height: 20,),
                CustomTextField(text: 'User Name', icon: Icon(Icons.person,color: Colors.deepPurple), type: TextInputType.text,
                    isPassword: false, mycontroller: nameController),
                SizedBox(height: 20,),
                CustomTextField(text: 'Email', icon: Icon(Icons.message,color: Colors.deepPurple), type: TextInputType.emailAddress,
                    isPassword: false, mycontroller: emailController),
                SizedBox(height: 20,),
                CustomTextField(text: 'Phone', icon: Icon(Icons.phone,color: Colors.deepPurple), type: TextInputType.number,
                    isPassword: false, mycontroller: phoneController),
                SizedBox(height: 20,),
                CustomTextField(text: 'Password', icon: Icon(Icons.lock,color: Colors.deepPurple), type: TextInputType.emailAddress,
                    isPassword: true, mycontroller: passwordController),
                SizedBox(height: 20,),
                CustomTextField(text: 'Confirm Password', icon: Icon(Icons.key,color: Colors.deepPurple), type: TextInputType.number,
                    isPassword: true, mycontroller: confirmController),
                SizedBox(height: 20,),
                CustomButton(text: 'Register', width: double.infinity, height: 55, color: Colors.deepPurple,
                    textColor: Colors.white, size: 18, onChange: (){}),
                SizedBox(height: 20,),
                CustomButton(text: 'Login', width: double.infinity, height: 55, color: Colors.deepPurple,
                    textColor: Colors.white, size: 18, onChange: (){})

              ],),
            ),

          ],
        ),
      )
    );
  }
}
class CustomPath extends CustomClipper<Path> {
  var radius=5.0;
  @override
  Path getClip(Size size) {
    double w= size.width;
    double h=size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, h);
    path.quadraticBezierTo(w*0.39, h*0.98, w*0.50, h*0.77);
    path.quadraticBezierTo(w*0.72, h*0.61, w, h);

    path.lineTo(w, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}