import 'package:flutter/material.dart';
class AccountLogin extends StatefulWidget {
  const AccountLogin({super.key});

  @override
  State<AccountLogin> createState() => _AccountLoginState();
}

class _AccountLoginState extends State<AccountLogin> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _obscureText = true;
  bool _isPasswordEightCharacters = false;
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _checkPassword(String value) {
    setState(() {
      _isPasswordEightCharacters = value.length >= 8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF25364A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF25364A),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  Icon(Icons.star_border,
                    color: Colors.green,),
                ],
              ),
              const SizedBox(width: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Back! Please Enter Your Details',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                    ),)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Email',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        ),),
                      SizedBox(
                        width: 350,
                        height:35,
                        child: ListTile(
                          title: TextFormField(
                            style: const TextStyle(color: Colors.white,fontSize: 20),
                            decoration: const InputDecoration(
                              suffixStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,),
                              filled: true,
                              fillColor:  Color(0xFF25364A),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty ){
                                return 'Please enter your email';
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _email = value!;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18,),
              Container(
                height: 2,
                decoration: const BoxDecoration(
                    color: Colors.green
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Password',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                        ),),
                      SizedBox(
                        width: 350,
                        height: 50,
                        child: ListTile(
                          title: TextFormField(
                            style: const TextStyle(color: Colors.white,fontSize: 15),
                            controller: _passwordController,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixStyle: const TextStyle(
                                color: Colors.white70,
                                fontSize: 15,),
                              filled: true,
                              fillColor:const Color(0xFF25364A),
                              suffixIcon: IconButton(
                                icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 8) {
                                return 'Password must be at least 8 characters';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 2,
                decoration: const BoxDecoration(
                    color: Colors.green
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/navbar');
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process form data
                        print('Email: $_email');
                        print('Password: $_password');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 150),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    child: const Text('Sign In',
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child:TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  label: const Text('Dont have an Account? Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF25364A),
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

