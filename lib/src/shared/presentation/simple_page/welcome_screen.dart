// ignore_for_file: use_super_parameters

import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_admin/src/shared/presentation/simple_page/login/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  final ValueNotifier<bool> _hideNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController);
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _hideNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/girl.jpeg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.4),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: const Text(
                      "Brand New Perspective",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1300),
                    child: const Text(
                      "Let's start with our summer collection.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                const SizedBox(
                  height: 100,
                ),
                ValueListenableBuilder(
                    valueListenable: _hideNotifier,
                    builder: (context, hide, child) {
                      return InkWell(
                        onTap: () {
                          _hideNotifier.value = true;
                          _scaleController.forward().then((_) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                          });
                        },
                        child: AnimatedBuilder(
                          animation: _scaleController,
                          builder: (context, child) => Transform.scale(
                            scale: _scaleAnimation.value,
                            child: FadeInUp(
                                duration: const Duration(milliseconds: 1500),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: hide == false
                                        ? const Text(
                                            "Get Start",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        : Container(),
                                  ),
                                )),
                          ),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
