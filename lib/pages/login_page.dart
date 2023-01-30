import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final String undrawLogin = 'assets/images/undraw_login.svg';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF151419),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 80, right: 80),
            children: [
              SvgPicture.asset(undrawLogin),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  label: Text('Email'),
                  filled: true,
                  fillColor: Color(0xFFECECEC),
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  label: Text('Password'),
                  filled: true,
                  fillColor: Color(0xFFECECEC),
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => const Color(0xFF76115B),
                    ),
                    padding: MaterialStateProperty.resolveWith(
                      (states) => const EdgeInsets.only(top: 16, bottom: 16),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 20,
                color: Color(0xFFECECEC),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () async =>
                        await Navigator.pushNamed(context, '/'),
                    child: const Text(
                      'Signup now!',
                      style: TextStyle(
                        color: Color(0xFF8AB1EC),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
