import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'messanger app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Login',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      labelText: ('Email Address'),
                      prefixIcon: const Icon(Icons.email),
                    ),
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return ('Password Address is required');
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword ? true : isPassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      labelText: ('Password'),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: isPassword
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                  print(isPassword);
                                });
                              },
                              icon: const Icon(Icons.visibility))
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                  print(isPassword);
                                });
                              },
                              icon: const Icon(Icons.visibility_off_outlined)),
                    ),
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return ('Password Address is required');
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue,
                      ),
                      child: MaterialButton(
                          child: const Text('login',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context) =>
                                        const MessengerApp(),
                                  ),
                                 );
                              // msg: toast message.
                              // toastLength: Duration of toast
                              // backgroundColor: Background color to be shown.
                              // textColor: Text color to be shown.
                              // fontSize: Font size of toast message.
                              Fluttertoast.showToast(
                                  msg: "Login Successfully",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16
                               );
                            }
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print('Register');
                        },
                        child: const Text('Register now'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
