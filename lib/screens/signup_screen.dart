import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/login_screen.dart';

enum Gender {male,female}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // This widget is the root of your application.
  bool _obscureText = true;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
               const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fitness Tracker',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0,
                        fontFamily: 'Rubic Medium',
                        color: Color(0xfff97038),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubic Medium',
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 14,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xFF0E1020)),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                          color: Color(0xFF0E1020)
                      ),
                      hintText: 'Name',
                      hintStyle: const TextStyle(color: Color(0xFF0E1020)),
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xFF0E1020)),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                          color: Color(0xFF0E1020)
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Color(0xFF0E1020)),
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xFF0E1020)),
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                          color: Color(0xFF0E1020)
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText ? Icons.visibility_off:Icons.visibility ),
                        onPressed: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Color(0xFF0E1020)),
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),

                Padding(padding: const EdgeInsets.symmetric(
                    vertical: 20,horizontal: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[ Expanded(
                        child: RadioListTile<Gender>(
                          title: const Text('Male',
                            style: TextStyle(fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          value: Gender.male,
                          groupValue: selectedGender ,
                          activeColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                          onChanged: ( value ){
                            setState(() {
                              selectedGender = value;
                            });
                          } ,
                        ),
                      ),
                        Expanded(
                          child: RadioListTile<Gender>(
                            title: const Text('Female',
                              style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.w500),),
                            value: Gender.female,
                            groupValue: selectedGender ,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            activeColor: Colors.white,
                            onChanged: ( value ){
                              setState(() {
                                selectedGender = value;
                              });
                            } ,
                          ),
                        ),
                      ]) ,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: const Text('Congratulations' , style: TextStyle(color: Colors.black)),
                        content: const Text('Account Created Successfully!', style: TextStyle(color: Colors.black),),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text("Close",
                              style:  TextStyle(
                                  color: Colors.white
                              ),),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                            },
                          ),
                        ],
                      );
                    } ,);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xfff97038),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: 'Rubic Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Rubic Medium',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontFamily: 'Rubic Medium',
                          color: Color(0xfff97038),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
