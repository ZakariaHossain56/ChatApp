import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  //tap to go to the login page
  void Function()? onTap;

   RegisterPage({
    super.key,
    required this.onTap
    });

  //login method
  void register(BuildContext context){
    //get auth service
    final _auth = AuthService();

    //register(If passwords match, then create user)
    if(_pwController.text == _confirmPwController.text){
      try{
        _auth.signUpWithEmailPassword(
      _emailController.text, 
      _pwController.text,
      );
      }
      catch(e){
        showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        )
        );
      }
      
    }
    //if passwords don't match -> show error dialog
    else{
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Passwords don't match!"),
        ),
        );
    }
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 50),
            //welcome back message
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const  SizedBox(height: 50,),
        
            //email textfield
            MyTextfield(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
              ),

            const  SizedBox(height: 10,),
        
            //password textfield
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
              ),

              const  SizedBox(height: 10,),
        
            //confirm password textfield
            MyTextfield(
              hintText: "Confirm Password",
              obscureText: true,
              controller: _confirmPwController,
              ),

              const SizedBox(height: 25,),
        
            //login button
            MyButton(
              text: "Register",
              onTap: () => register(context),
              ),

              const SizedBox(height: 25,),
        
            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary
                    ),
                    ),
                )
              ],
            )
        
          ],
        ),
      ),
    );
  }
}