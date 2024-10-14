import 'package:flutter/material.dart';
import 'package:healtho/core/utils/colors.dart';
import 'package:healtho/core/utils/functions/navigation.dart';
import 'package:healtho/core/widgets/round_button.dart';
import 'package:healtho/core/widgets/round_text_field.dart';
import 'package:healtho/features/login/physique/physique_page.dart';
import 'package:healtho/features/login/signin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GooglePage extends StatefulWidget {
  const GooglePage({super.key});

  @override
  State<GooglePage> createState() => _GooglePageState();
}

class _GooglePageState extends State<GooglePage> {
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: signupFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  'Name',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundTextField(
                  controller: nameController,
                  hintText: 'Shahd',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 40,
                ),

                Text(
                  'E-mail',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundTextField(
                  controller: signupEmailController,
                  hintText: 'shahd@gmail.com',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 40,
                ),

                Text(
                  'Password',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundTextField(
                  controller: signupPasswordController,
                  hintText: '12345677',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 40,
                ),

                RoundButton(
                  title: 'Sign Up',
                  onPressed: ()async{
                    if (signupFormKey.currentState!.validate()) {
                      try {
                        UserCredential userCredential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: signupEmailController.text,
                          password: signupPasswordController.text,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.green,
                            content: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: Text('Welcome to Healtho',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        );
                        Future.delayed(const Duration(seconds: 3), () {
                          context.push(const PhysiquePage());
                        });
                      } on FirebaseAuthException catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(e.message.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        );
                        print(e.toString());
                      } on Exception catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(e.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        );
                        print(e.toString());
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(e.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        );
                        print(e.toString());
                      }
                    }

                  },
                  isPadding: false,
                ),

                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.push(const SigninPage());
                    },
                    child: Text(
                      'Already have an account?! Sign in',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
