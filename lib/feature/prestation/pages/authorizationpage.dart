import 'package:asd/feature/prestation/widgets/auth/authlogo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/112.jpg"),
            fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
          )),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(100),
                    //     bottomRight: Radius.circular(100)),
                    // color: Colors.white,
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Authlogo()],
                ),
              ),
              _form("LOGIN", () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _form(String label, void func()) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 10),
            child: _input(Icon(Icons.email), "EMAIL", emailController, false),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child:
                _input(Icon(Icons.lock), "PASSWORD", passwordController, true),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: _button(label, func),
            ),
          )
        ],
      ),
    );
  }

  Widget _input(
      Icon icon, String hint, TextEditingController controller, bool obscure) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Form(
        child: TextFormField(
          controller: controller,
          obscureText: obscure,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
              hintText: hint,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 3)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white30, width: 1)),
              prefix: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: icon,
                ),
              )),
        ),
      ),
    );
  }

  Widget _button(String text, void func()) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shadowColor: Colors.deepPurpleAccent,
          textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
        onPressed: () {
          func();
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.indigo),
        ));
  }
}
