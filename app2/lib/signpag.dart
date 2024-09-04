import 'package:app2/bottom.dart';
import 'package:flutter/material.dart';

class Signpag extends StatefulWidget {
  const Signpag({super.key});

  @override
  State<Signpag> createState() => _SignpagState();
}

class _SignpagState extends State<Signpag> {
  @override
  Widget build(BuildContext context) {
    Size sizee = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: sizee.height,
              width: sizee.width,
              child: Image.asset(
                'images/p1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizee.height * 0.05,
                ),
                const Center(
                  child: Text(
                    '             👑',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const Center(
                  child: Text(
                    'BURGER \nQUEEN',
                    style: TextStyle(
                        fontSize: 30,
                        height: 0.9,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: sizee.height * 0.53,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Good Food \nTasty Food *',
                        style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 172, 109, 8)),
                      ),
                      SizedBox(
                        height: sizee.height * 0.05,
                      ),
                      Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Bottom()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber[800],
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(14),
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                      SizedBox(
                        height: sizee.height * 0.02,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white70),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white70,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
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
