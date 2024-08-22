import 'package:flutter/material.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  String _email = '';
  dynamic _password = '';
  final dynamic _checkPassword = '';
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _ischeckPassword(dynamic ){
    setState(() {
      _password = _checkPassword;
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
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text('Register',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Full Name',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 22,
                          ),),
                        SizedBox(
                          width: 350,height: 35,

                          child: ListTile(
                            title: TextField(
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFF25364A),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  decoration: const BoxDecoration(
                    color: Colors.green
                  ),
                ),
                const SizedBox(
                  height: 35,
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
                  height: 35,
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
                  height: 35,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Confirm Password',
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
                              decoration: const InputDecoration(
                                suffixStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,),
                                filled: true,
                                fillColor:Color(0xFF25364A),
                                border: OutlineInputBorder(
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
                                if (value != _ischeckPassword) {
                                  return 'Password does not tally';
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
                const SizedBox(height: 30,),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/navbar');
                    },
                    icon: const Icon(Icons.mail,color: Colors.black45,),
                    label: const Text('Sign Up With Email',
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.green,
                        fontSize: 18,
                      ),),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 70),
                      // onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child:TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    label: const Text('Already have an Account? Login',
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
      ),
    );
  }
}
