import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    ),
  );
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/prime_icon.png',
          scale: 3,
        ),
        backgroundColor: const Color.fromRGBO(15, 23, 30, 1.0),
        leading: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Back",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 16),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.refresh,
            size: 32,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        color: const Color.fromRGBO(15, 23, 30, 1.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Create account",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 50,
            child: TextField(
              minLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(76, 90, 109, 1.0),
                    fontSize: 14.5,
                  )),
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.orangeAccent,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Your email address",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(76, 90, 109, 1.0),
                  fontSize: 14.5,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.orangeAccent,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Create a password",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(76, 90, 109, 1.0), fontSize: 14.5),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                color: Color.fromRGBO(13, 108, 157, 1.0),
                Icons.info_outlined,
                size: 16,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Passwords must be at least 6 characters.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 28,
                width: 28,
                child: Checkbox(
                    activeColor: Colors.white,
                    value: true,
                    onChanged: (newValue) {}),
              ),
              SizedBox(width: 10),
              const Text(
                "Show password",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(13, 108, 157, 1.0),
                minimumSize: const Size.fromHeight(50)),
            child: const Text(
              "Create your Amazon account",
              style: TextStyle(
                color: Color.fromRGBO(232, 242, 247, 0.9),
                fontSize: 14,
              ),
            ),
            onPressed: () {
              print("Continue");
            },
          ),
          const SizedBox(
            height: 16,
          ),
          RichText(
            text: const TextSpan(
                text: "By creating an account, you agree to the ",
                style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 0.5), fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: "Prime Video Terms of Use ",
                    style: TextStyle(
                        color: Color.fromRGBO(13, 108, 157, 1.0), fontSize: 15),
                  ),
                  TextSpan(
                    text:
                        "and license agreements which can be found on the Amazon website.",
                    style: TextStyle(
                        color: Color.fromRGBO(158, 158, 158, 0.5),
                        fontSize: 15),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Already have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(66, 81, 100, 1.0),
                minimumSize: const Size.fromHeight(50)),
            child: const Text(
              "Sign-In now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            onPressed: () {
              print("Continue");
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "@ 1996-2023, Amazon.com, Inc. or its affiliates",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white54, fontSize: 14),
          )
        ]),
      ),
    );
  }
}
