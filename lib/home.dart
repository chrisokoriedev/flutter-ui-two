import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _email, _password;

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuck net'),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Login', style: TextStyle(fontSize: 40, color: Colors.grey, fontWeight: FontWeight.bold),),
                TextFormField(
                  controller: emailController,
                  // onSaved: (input) => _email = input,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Your email';
                    } else if (value.length < 10) {}
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter Your Email',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  controller: userController,
                  onSaved: (input) => _password = input,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Your  Username';
                    } else if (value.length < 8) {
                      return 'Input no less than 8 character';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.lock),
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                  ),
                ),

                TextFormField(
                  controller: passwordController,
                  onSaved: (input) => _password = input,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Your Password';
                    } else if (value.length < 8) {
                      return 'Input no less than 8 character';
                    }

                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.lock),
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                  ),
                ),
                new Container(
                    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: new RaisedButton(
                      child: const Text('Submit'),
                      // onPressed: () async {
                      //   try {
                      //     FirebaseUser user = (await FirebaseAuth.instance
                      //             .createUserWithEmailAndPassword(
                      //       email: emailController.text,
                      //       password: passwordController.text,
                      //     ))
                      //         .user;
                      //     if(user != null){
                      //
                      //     }
                      //   } catch (e) {
                      //     print(e);
                      //     emailController.text = "";
                      //     passwordController.text = "";
                      //   }
                      // },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
